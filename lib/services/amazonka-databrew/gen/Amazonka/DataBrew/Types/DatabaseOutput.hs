{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.DataBrew.Types.DatabaseOutput
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DataBrew.Types.DatabaseOutput where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.DataBrew.Types.DatabaseOutputMode
import Amazonka.DataBrew.Types.DatabaseTableOutputOptions
import qualified Amazonka.Prelude as Prelude

-- | Represents a JDBC database output object which defines the output
-- destination for a DataBrew recipe job to write into.
--
-- /See:/ 'newDatabaseOutput' smart constructor.
data DatabaseOutput = DatabaseOutput'
  { -- | The output mode to write into the database. Currently supported option:
    -- NEW_TABLE.
    databaseOutputMode :: Prelude.Maybe DatabaseOutputMode,
    -- | The Glue connection that stores the connection information for the
    -- target database.
    glueConnectionName :: Prelude.Text,
    -- | Represents options that specify how and where DataBrew writes the
    -- database output generated by recipe jobs.
    databaseOptions :: DatabaseTableOutputOptions
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DatabaseOutput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'databaseOutputMode', 'databaseOutput_databaseOutputMode' - The output mode to write into the database. Currently supported option:
-- NEW_TABLE.
--
-- 'glueConnectionName', 'databaseOutput_glueConnectionName' - The Glue connection that stores the connection information for the
-- target database.
--
-- 'databaseOptions', 'databaseOutput_databaseOptions' - Represents options that specify how and where DataBrew writes the
-- database output generated by recipe jobs.
newDatabaseOutput ::
  -- | 'glueConnectionName'
  Prelude.Text ->
  -- | 'databaseOptions'
  DatabaseTableOutputOptions ->
  DatabaseOutput
newDatabaseOutput
  pGlueConnectionName_
  pDatabaseOptions_ =
    DatabaseOutput'
      { databaseOutputMode =
          Prelude.Nothing,
        glueConnectionName = pGlueConnectionName_,
        databaseOptions = pDatabaseOptions_
      }

-- | The output mode to write into the database. Currently supported option:
-- NEW_TABLE.
databaseOutput_databaseOutputMode :: Lens.Lens' DatabaseOutput (Prelude.Maybe DatabaseOutputMode)
databaseOutput_databaseOutputMode = Lens.lens (\DatabaseOutput' {databaseOutputMode} -> databaseOutputMode) (\s@DatabaseOutput' {} a -> s {databaseOutputMode = a} :: DatabaseOutput)

-- | The Glue connection that stores the connection information for the
-- target database.
databaseOutput_glueConnectionName :: Lens.Lens' DatabaseOutput Prelude.Text
databaseOutput_glueConnectionName = Lens.lens (\DatabaseOutput' {glueConnectionName} -> glueConnectionName) (\s@DatabaseOutput' {} a -> s {glueConnectionName = a} :: DatabaseOutput)

-- | Represents options that specify how and where DataBrew writes the
-- database output generated by recipe jobs.
databaseOutput_databaseOptions :: Lens.Lens' DatabaseOutput DatabaseTableOutputOptions
databaseOutput_databaseOptions = Lens.lens (\DatabaseOutput' {databaseOptions} -> databaseOptions) (\s@DatabaseOutput' {} a -> s {databaseOptions = a} :: DatabaseOutput)

instance Data.FromJSON DatabaseOutput where
  parseJSON =
    Data.withObject
      "DatabaseOutput"
      ( \x ->
          DatabaseOutput'
            Prelude.<$> (x Data..:? "DatabaseOutputMode")
            Prelude.<*> (x Data..: "GlueConnectionName")
            Prelude.<*> (x Data..: "DatabaseOptions")
      )

instance Prelude.Hashable DatabaseOutput where
  hashWithSalt _salt DatabaseOutput' {..} =
    _salt
      `Prelude.hashWithSalt` databaseOutputMode
      `Prelude.hashWithSalt` glueConnectionName
      `Prelude.hashWithSalt` databaseOptions

instance Prelude.NFData DatabaseOutput where
  rnf DatabaseOutput' {..} =
    Prelude.rnf databaseOutputMode
      `Prelude.seq` Prelude.rnf glueConnectionName
      `Prelude.seq` Prelude.rnf databaseOptions

instance Data.ToJSON DatabaseOutput where
  toJSON DatabaseOutput' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("DatabaseOutputMode" Data..=)
              Prelude.<$> databaseOutputMode,
            Prelude.Just
              ("GlueConnectionName" Data..= glueConnectionName),
            Prelude.Just
              ("DatabaseOptions" Data..= databaseOptions)
          ]
      )
