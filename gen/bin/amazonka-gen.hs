{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-top-binds #-}

module Main (main) where

import qualified Control.Lens as Lens
import qualified Control.Monad.State.Strict as State
import qualified Data.List as List
import qualified Data.Text as Text
import qualified Data.Time as Time
import qualified Gen.AST as AST
import Gen.IO
import qualified Gen.JSON as JSON
import Gen.Prelude
import qualified Gen.Tree as Tree
import Gen.Types hiding (config, info, retry, service)
import qualified Options.Applicative as Options
import qualified System.FilePath as FilePath
import qualified UnliftIO
import qualified UnliftIO.Directory as UnliftIO

data Options = Options
  { _optionOutput :: FilePath,
    _optionAnnexes :: FilePath,
    _optionServices :: FilePath,
    _optionTemplates :: FilePath,
    _optionAssets :: FilePath,
    _optionRetry :: FilePath,
    _optionVersions :: Versions,
    _optionModels :: [FilePath]
  }
  deriving (Show)

$(Lens.makeLenses ''Options)

parser :: Options.Parser Options
parser =
  Options
    <$> Options.strOption
      ( Options.long "out"
          <> Options.metavar "OUT-PATH"
          <> Options.help "Directory to place the generated library."
      )
    <*> Options.strOption
      ( Options.long "annexes"
          <> Options.metavar "PATH"
          <> Options.help "Directory containing botocore model annexes."
          <> Options.value "config/annexes"
      )
    <*> Options.strOption
      ( Options.long "services"
          <> Options.metavar "PATH"
          <> Options.help "Directory containing service configuration."
          <> Options.value "config/services"
      )
    <*> Options.strOption
      ( Options.long "templates"
          <> Options.metavar "PATH"
          <> Options.help "Directory containing ED-E templates."
          <> Options.value "config/templates"
      )
    <*> Options.strOption
      ( Options.long "assets"
          <> Options.metavar "PATH"
          <> Options.help "Directory containing static files for generated libraries."
          <> Options.value "config/assets"
      )
    <*> Options.strOption
      ( Options.long "retry"
          <> Options.metavar "PATH"
          <> Options.help "Path to the file containing retry definitions."
      )
    <*> ( Versions
            <$> Options.option
              versionReader
              ( Options.long "library-version"
                  <> Options.metavar "VERSION"
                  <> Options.help "Version of the library to generate."
              )
            <*> Options.option
              versionReader
              ( Options.long "client-version"
                  <> Options.metavar "VERSION"
                  <> Options.help "Client library version dependecy for examples."
              )
        )
    <*> Options.some
      ( Options.strArgument
          ( Options.metavar "MODEL-PATH"
              <> Options.help "Directory for a service's botocore models."
          )
      )

versionReader :: Options.ReadM (Version v)
versionReader = Options.eitherReader (Right . Version . Text.pack)

options :: Options.ParserInfo Options
options = Options.info (Options.helper <*> parser) Options.fullDesc

validate :: MonadIO m => Options -> m Options
validate o = flip State.execStateT o $ do
  sequence_
    [ check optionOutput,
      check optionAnnexes,
      check optionServices,
      check optionTemplates,
      check optionAssets,
      check optionRetry
    ]
  mapM canon (o ^. optionModels) >>= Lens.assign optionModels
  where
    check :: (MonadIO m, MonadState s m) => Lens' s FilePath -> m ()
    check l = State.gets (Lens.view l) >>= canon >>= Lens.assign l

    canon :: MonadIO m => FilePath -> m FilePath
    canon = UnliftIO.canonicalizePath

main :: IO ()
main = do
  Options {..} <-
    Options.customExecParser (Options.prefs Options.showHelpOnError) options
      >>= validate

  title "Initialising..." <* done

  let total = show (length _optionModels)
      load = readTemplate _optionTemplates

  templates <- do
    title ("Loading templates from " ++ _optionTemplates)

    cabalTemplate <- load "cabal.ede"
    tocTemplate <- load "toc.ede"
    waitersTemplate <- load "waiters.ede"
    readmeTemplate <- load "readme.ede"
    operationTemplate <- load "operation.ede"
    typesTemplate <- load "types.ede"
    lensTemplate <- load "lens.ede"
    sumTemplate <- load "sum.ede"
    productTemplate <- load "product.ede"
    testMainTemplate <- load "test/main.ede"
    testNamespaceTemplate <- load "test/namespace.ede"
    testInternalTemplate <- load "test/internal.ede"
    fixturesTemplate <- load "test/fixtures.ede"
    fixtureRequestTemplate <- load "test/fixtures/request.ede"
    blankTemplate <- load "blank.ede"

    Templates {..} <$ done

  let hoistEither = either UnliftIO.throwString pure
      formatTime = Time.formatTime Time.defaultTimeLocale "%Y-%m-%d"

  retry <- JSON.required _optionRetry

  forM_ (zip [1 ..] _optionModels) $ \(index, path) -> do
    title $
      "[" ++ show (index :: Int)
        ++ "/"
        ++ total
        ++ "] model:"
        ++ FilePath.takeFileName path

    model@Model {..} <-
      UnliftIO.listDirectory path
        >>= hoistEither . loadModel path

    say $
      "Selected version "
        ++ formatTime _modelVersion
        ++ " from ["
        ++ List.intercalate ", " (map formatTime _modelVersions)
        ++ "]"

    config@Config {..} <-
      JSON.required (_optionServices </> configFile model)
        >>= hoistEither . JSON.parse

    service <-
      sequence
        [ JSON.optional (_optionAnnexes </> annexFile model),
          JSON.required (serviceFile model),
          JSON.optional (waitersFile model),
          JSON.optional (pagersFile model),
          pure retry
        ]
        >>= hoistEither . JSON.parse . JSON.merge

    say $
      "Parsed '"
        ++ Text.unpack (service ^. serviceFullName)
        ++ "' API definition"

    library <- hoistEither (AST.rewrite _optionVersions config service)

    say $
      "Synthesised '"
        ++ Text.unpack (library ^. libraryName)
        ++ "' Haskell package"

    directoryTree <-
      hoistEither (Tree.populate _optionOutput templates library)
        >>= Tree.fold createDir (\x -> either (touchFile x) (writeLTFile x))

    say $
      "Rendered "
        ++ Text.unpack _libraryName
        ++ "-"
        ++ Text.unpack (semver (library ^. libraryVersion))
        ++ " package in "
        ++ Tree.root directoryTree

    copyDir _optionAssets (Tree.root directoryTree)

    done

  title $
    "Processed "
      ++ total
      ++ " models."
