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
-- Module      : Amazonka.MediaLive.Types.RawSettings
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.RawSettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Raw Settings
--
-- /See:/ 'newRawSettings' smart constructor.
data RawSettings = RawSettings'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RawSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newRawSettings ::
  RawSettings
newRawSettings = RawSettings'

instance Data.FromJSON RawSettings where
  parseJSON =
    Data.withObject
      "RawSettings"
      (\x -> Prelude.pure RawSettings')

instance Prelude.Hashable RawSettings where
  hashWithSalt _salt _ =
    _salt `Prelude.hashWithSalt` ()

instance Prelude.NFData RawSettings where
  rnf _ = ()

instance Data.ToJSON RawSettings where
  toJSON = Prelude.const (Data.Object Prelude.mempty)
