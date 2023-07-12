{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.SecurityHub.Types.StringFilterComparison
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.StringFilterComparison
  ( StringFilterComparison
      ( ..,
        StringFilterComparison_EQUALS,
        StringFilterComparison_NOT_EQUALS,
        StringFilterComparison_PREFIX,
        StringFilterComparison_PREFIX_NOT_EQUALS
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype StringFilterComparison = StringFilterComparison'
  { fromStringFilterComparison ::
      Data.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Data.FromText,
      Data.ToText,
      Data.ToByteString,
      Data.ToLog,
      Data.ToHeader,
      Data.ToQuery,
      Data.FromJSON,
      Data.FromJSONKey,
      Data.ToJSON,
      Data.ToJSONKey,
      Data.FromXML,
      Data.ToXML
    )

pattern StringFilterComparison_EQUALS :: StringFilterComparison
pattern StringFilterComparison_EQUALS = StringFilterComparison' "EQUALS"

pattern StringFilterComparison_NOT_EQUALS :: StringFilterComparison
pattern StringFilterComparison_NOT_EQUALS = StringFilterComparison' "NOT_EQUALS"

pattern StringFilterComparison_PREFIX :: StringFilterComparison
pattern StringFilterComparison_PREFIX = StringFilterComparison' "PREFIX"

pattern StringFilterComparison_PREFIX_NOT_EQUALS :: StringFilterComparison
pattern StringFilterComparison_PREFIX_NOT_EQUALS = StringFilterComparison' "PREFIX_NOT_EQUALS"

{-# COMPLETE
  StringFilterComparison_EQUALS,
  StringFilterComparison_NOT_EQUALS,
  StringFilterComparison_PREFIX,
  StringFilterComparison_PREFIX_NOT_EQUALS,
  StringFilterComparison'
  #-}
