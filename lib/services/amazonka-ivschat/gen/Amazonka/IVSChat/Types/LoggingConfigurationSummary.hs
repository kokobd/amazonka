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
-- Module      : Amazonka.IVSChat.Types.LoggingConfigurationSummary
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IVSChat.Types.LoggingConfigurationSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.IVSChat.Types.DestinationConfiguration
import Amazonka.IVSChat.Types.LoggingConfigurationState
import qualified Amazonka.Prelude as Prelude

-- | Summary information about a logging configuration.
--
-- /See:/ 'newLoggingConfigurationSummary' smart constructor.
data LoggingConfigurationSummary = LoggingConfigurationSummary'
  { -- | Logging-configuration ARN.
    arn :: Prelude.Maybe Prelude.Text,
    -- | Time when the logging configuration was created. This is an ISO 8601
    -- timestamp; /note that this is returned as a string/.
    createTime :: Prelude.Maybe Data.ISO8601,
    -- | A complex type that contains a destination configuration for where chat
    -- content will be logged.
    destinationConfiguration :: Prelude.Maybe DestinationConfiguration,
    -- | Logging-configuration ID, generated by the system. This is a relative
    -- identifier, the part of the ARN that uniquely identifies the room.
    id :: Prelude.Maybe Prelude.Text,
    -- | Logging-configuration name. The value does not need to be unique.
    name :: Prelude.Maybe Prelude.Text,
    -- | The state of the logging configuration. When this is @ACTIVE@, the
    -- configuration is ready for logging chat content.
    state :: Prelude.Maybe LoggingConfigurationState,
    -- | Tags to attach to the resource. Array of maps, each of the form
    -- @string:string (key:value)@. See
    -- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS Resources>
    -- for details, including restrictions that apply to tags and \"Tag naming
    -- limits and requirements\"; Amazon IVS Chat has no constraints on tags
    -- beyond what is documented there.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Time of the logging configuration’s last update. This is an ISO 8601
    -- timestamp; /note that this is returned as a string/.
    updateTime :: Prelude.Maybe Data.ISO8601
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LoggingConfigurationSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'loggingConfigurationSummary_arn' - Logging-configuration ARN.
--
-- 'createTime', 'loggingConfigurationSummary_createTime' - Time when the logging configuration was created. This is an ISO 8601
-- timestamp; /note that this is returned as a string/.
--
-- 'destinationConfiguration', 'loggingConfigurationSummary_destinationConfiguration' - A complex type that contains a destination configuration for where chat
-- content will be logged.
--
-- 'id', 'loggingConfigurationSummary_id' - Logging-configuration ID, generated by the system. This is a relative
-- identifier, the part of the ARN that uniquely identifies the room.
--
-- 'name', 'loggingConfigurationSummary_name' - Logging-configuration name. The value does not need to be unique.
--
-- 'state', 'loggingConfigurationSummary_state' - The state of the logging configuration. When this is @ACTIVE@, the
-- configuration is ready for logging chat content.
--
-- 'tags', 'loggingConfigurationSummary_tags' - Tags to attach to the resource. Array of maps, each of the form
-- @string:string (key:value)@. See
-- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS Resources>
-- for details, including restrictions that apply to tags and \"Tag naming
-- limits and requirements\"; Amazon IVS Chat has no constraints on tags
-- beyond what is documented there.
--
-- 'updateTime', 'loggingConfigurationSummary_updateTime' - Time of the logging configuration’s last update. This is an ISO 8601
-- timestamp; /note that this is returned as a string/.
newLoggingConfigurationSummary ::
  LoggingConfigurationSummary
newLoggingConfigurationSummary =
  LoggingConfigurationSummary'
    { arn = Prelude.Nothing,
      createTime = Prelude.Nothing,
      destinationConfiguration = Prelude.Nothing,
      id = Prelude.Nothing,
      name = Prelude.Nothing,
      state = Prelude.Nothing,
      tags = Prelude.Nothing,
      updateTime = Prelude.Nothing
    }

-- | Logging-configuration ARN.
loggingConfigurationSummary_arn :: Lens.Lens' LoggingConfigurationSummary (Prelude.Maybe Prelude.Text)
loggingConfigurationSummary_arn = Lens.lens (\LoggingConfigurationSummary' {arn} -> arn) (\s@LoggingConfigurationSummary' {} a -> s {arn = a} :: LoggingConfigurationSummary)

-- | Time when the logging configuration was created. This is an ISO 8601
-- timestamp; /note that this is returned as a string/.
loggingConfigurationSummary_createTime :: Lens.Lens' LoggingConfigurationSummary (Prelude.Maybe Prelude.UTCTime)
loggingConfigurationSummary_createTime = Lens.lens (\LoggingConfigurationSummary' {createTime} -> createTime) (\s@LoggingConfigurationSummary' {} a -> s {createTime = a} :: LoggingConfigurationSummary) Prelude.. Lens.mapping Data._Time

-- | A complex type that contains a destination configuration for where chat
-- content will be logged.
loggingConfigurationSummary_destinationConfiguration :: Lens.Lens' LoggingConfigurationSummary (Prelude.Maybe DestinationConfiguration)
loggingConfigurationSummary_destinationConfiguration = Lens.lens (\LoggingConfigurationSummary' {destinationConfiguration} -> destinationConfiguration) (\s@LoggingConfigurationSummary' {} a -> s {destinationConfiguration = a} :: LoggingConfigurationSummary)

-- | Logging-configuration ID, generated by the system. This is a relative
-- identifier, the part of the ARN that uniquely identifies the room.
loggingConfigurationSummary_id :: Lens.Lens' LoggingConfigurationSummary (Prelude.Maybe Prelude.Text)
loggingConfigurationSummary_id = Lens.lens (\LoggingConfigurationSummary' {id} -> id) (\s@LoggingConfigurationSummary' {} a -> s {id = a} :: LoggingConfigurationSummary)

-- | Logging-configuration name. The value does not need to be unique.
loggingConfigurationSummary_name :: Lens.Lens' LoggingConfigurationSummary (Prelude.Maybe Prelude.Text)
loggingConfigurationSummary_name = Lens.lens (\LoggingConfigurationSummary' {name} -> name) (\s@LoggingConfigurationSummary' {} a -> s {name = a} :: LoggingConfigurationSummary)

-- | The state of the logging configuration. When this is @ACTIVE@, the
-- configuration is ready for logging chat content.
loggingConfigurationSummary_state :: Lens.Lens' LoggingConfigurationSummary (Prelude.Maybe LoggingConfigurationState)
loggingConfigurationSummary_state = Lens.lens (\LoggingConfigurationSummary' {state} -> state) (\s@LoggingConfigurationSummary' {} a -> s {state = a} :: LoggingConfigurationSummary)

-- | Tags to attach to the resource. Array of maps, each of the form
-- @string:string (key:value)@. See
-- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS Resources>
-- for details, including restrictions that apply to tags and \"Tag naming
-- limits and requirements\"; Amazon IVS Chat has no constraints on tags
-- beyond what is documented there.
loggingConfigurationSummary_tags :: Lens.Lens' LoggingConfigurationSummary (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
loggingConfigurationSummary_tags = Lens.lens (\LoggingConfigurationSummary' {tags} -> tags) (\s@LoggingConfigurationSummary' {} a -> s {tags = a} :: LoggingConfigurationSummary) Prelude.. Lens.mapping Lens.coerced

-- | Time of the logging configuration’s last update. This is an ISO 8601
-- timestamp; /note that this is returned as a string/.
loggingConfigurationSummary_updateTime :: Lens.Lens' LoggingConfigurationSummary (Prelude.Maybe Prelude.UTCTime)
loggingConfigurationSummary_updateTime = Lens.lens (\LoggingConfigurationSummary' {updateTime} -> updateTime) (\s@LoggingConfigurationSummary' {} a -> s {updateTime = a} :: LoggingConfigurationSummary) Prelude.. Lens.mapping Data._Time

instance Data.FromJSON LoggingConfigurationSummary where
  parseJSON =
    Data.withObject
      "LoggingConfigurationSummary"
      ( \x ->
          LoggingConfigurationSummary'
            Prelude.<$> (x Data..:? "arn")
            Prelude.<*> (x Data..:? "createTime")
            Prelude.<*> (x Data..:? "destinationConfiguration")
            Prelude.<*> (x Data..:? "id")
            Prelude.<*> (x Data..:? "name")
            Prelude.<*> (x Data..:? "state")
            Prelude.<*> (x Data..:? "tags" Data..!= Prelude.mempty)
            Prelude.<*> (x Data..:? "updateTime")
      )

instance Prelude.Hashable LoggingConfigurationSummary where
  hashWithSalt _salt LoggingConfigurationSummary' {..} =
    _salt
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` createTime
      `Prelude.hashWithSalt` destinationConfiguration
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` updateTime

instance Prelude.NFData LoggingConfigurationSummary where
  rnf LoggingConfigurationSummary' {..} =
    Prelude.rnf arn
      `Prelude.seq` Prelude.rnf createTime
      `Prelude.seq` Prelude.rnf destinationConfiguration
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf tags
      `Prelude.seq` Prelude.rnf updateTime
