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
-- Module      : Amazonka.S3.Types.BucketLogsPermission
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.S3.Types.BucketLogsPermission
  ( BucketLogsPermission
      ( ..,
        BucketLogsPermission_FULL_CONTROL,
        BucketLogsPermission_READ,
        BucketLogsPermission_WRITE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import Amazonka.S3.Internal

newtype BucketLogsPermission = BucketLogsPermission'
  { fromBucketLogsPermission ::
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

pattern BucketLogsPermission_FULL_CONTROL :: BucketLogsPermission
pattern BucketLogsPermission_FULL_CONTROL = BucketLogsPermission' "FULL_CONTROL"

pattern BucketLogsPermission_READ :: BucketLogsPermission
pattern BucketLogsPermission_READ = BucketLogsPermission' "READ"

pattern BucketLogsPermission_WRITE :: BucketLogsPermission
pattern BucketLogsPermission_WRITE = BucketLogsPermission' "WRITE"

{-# COMPLETE
  BucketLogsPermission_FULL_CONTROL,
  BucketLogsPermission_READ,
  BucketLogsPermission_WRITE,
  BucketLogsPermission'
  #-}
