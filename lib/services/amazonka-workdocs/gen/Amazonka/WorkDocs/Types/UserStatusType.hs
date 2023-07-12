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
-- Module      : Amazonka.WorkDocs.Types.UserStatusType
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.WorkDocs.Types.UserStatusType
  ( UserStatusType
      ( ..,
        UserStatusType_ACTIVE,
        UserStatusType_INACTIVE,
        UserStatusType_PENDING
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype UserStatusType = UserStatusType'
  { fromUserStatusType ::
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

pattern UserStatusType_ACTIVE :: UserStatusType
pattern UserStatusType_ACTIVE = UserStatusType' "ACTIVE"

pattern UserStatusType_INACTIVE :: UserStatusType
pattern UserStatusType_INACTIVE = UserStatusType' "INACTIVE"

pattern UserStatusType_PENDING :: UserStatusType
pattern UserStatusType_PENDING = UserStatusType' "PENDING"

{-# COMPLETE
  UserStatusType_ACTIVE,
  UserStatusType_INACTIVE,
  UserStatusType_PENDING,
  UserStatusType'
  #-}
