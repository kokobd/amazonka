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
-- Module      : Amazonka.SageMaker.Types.AlgorithmStatus
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.AlgorithmStatus
  ( AlgorithmStatus
      ( ..,
        AlgorithmStatus_Completed,
        AlgorithmStatus_Deleting,
        AlgorithmStatus_Failed,
        AlgorithmStatus_InProgress,
        AlgorithmStatus_Pending
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype AlgorithmStatus = AlgorithmStatus'
  { fromAlgorithmStatus ::
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

pattern AlgorithmStatus_Completed :: AlgorithmStatus
pattern AlgorithmStatus_Completed = AlgorithmStatus' "Completed"

pattern AlgorithmStatus_Deleting :: AlgorithmStatus
pattern AlgorithmStatus_Deleting = AlgorithmStatus' "Deleting"

pattern AlgorithmStatus_Failed :: AlgorithmStatus
pattern AlgorithmStatus_Failed = AlgorithmStatus' "Failed"

pattern AlgorithmStatus_InProgress :: AlgorithmStatus
pattern AlgorithmStatus_InProgress = AlgorithmStatus' "InProgress"

pattern AlgorithmStatus_Pending :: AlgorithmStatus
pattern AlgorithmStatus_Pending = AlgorithmStatus' "Pending"

{-# COMPLETE
  AlgorithmStatus_Completed,
  AlgorithmStatus_Deleting,
  AlgorithmStatus_Failed,
  AlgorithmStatus_InProgress,
  AlgorithmStatus_Pending,
  AlgorithmStatus'
  #-}
