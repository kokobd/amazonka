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
-- Module      : Amazonka.SageMaker.Types.ScheduleConfig
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.ScheduleConfig where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Configuration details about the monitoring schedule.
--
-- /See:/ 'newScheduleConfig' smart constructor.
data ScheduleConfig = ScheduleConfig'
  { -- | A cron expression that describes details about the monitoring schedule.
    --
    -- Currently the only supported cron expressions are:
    --
    -- -   If you want to set the job to start every hour, please use the
    --     following:
    --
    --     @Hourly: cron(0 * ? * * *)@
    --
    -- -   If you want to start the job daily:
    --
    --     @cron(0 [00-23] ? * * *)@
    --
    -- For example, the following are valid cron expressions:
    --
    -- -   Daily at noon UTC: @cron(0 12 ? * * *)@
    --
    -- -   Daily at midnight UTC: @cron(0 0 ? * * *)@
    --
    -- To support running every 6, 12 hours, the following are also supported:
    --
    -- @cron(0 [00-23]\/[01-24] ? * * *)@
    --
    -- For example, the following are valid cron expressions:
    --
    -- -   Every 12 hours, starting at 5pm UTC: @cron(0 17\/12 ? * * *)@
    --
    -- -   Every two hours starting at midnight: @cron(0 0\/2 ? * * *)@
    --
    -- -   Even though the cron expression is set to start at 5PM UTC, note
    --     that there could be a delay of 0-20 minutes from the actual
    --     requested time to run the execution.
    --
    -- -   We recommend that if you would like a daily schedule, you do not
    --     provide this parameter. Amazon SageMaker will pick a time for
    --     running every day.
    scheduleExpression :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ScheduleConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'scheduleExpression', 'scheduleConfig_scheduleExpression' - A cron expression that describes details about the monitoring schedule.
--
-- Currently the only supported cron expressions are:
--
-- -   If you want to set the job to start every hour, please use the
--     following:
--
--     @Hourly: cron(0 * ? * * *)@
--
-- -   If you want to start the job daily:
--
--     @cron(0 [00-23] ? * * *)@
--
-- For example, the following are valid cron expressions:
--
-- -   Daily at noon UTC: @cron(0 12 ? * * *)@
--
-- -   Daily at midnight UTC: @cron(0 0 ? * * *)@
--
-- To support running every 6, 12 hours, the following are also supported:
--
-- @cron(0 [00-23]\/[01-24] ? * * *)@
--
-- For example, the following are valid cron expressions:
--
-- -   Every 12 hours, starting at 5pm UTC: @cron(0 17\/12 ? * * *)@
--
-- -   Every two hours starting at midnight: @cron(0 0\/2 ? * * *)@
--
-- -   Even though the cron expression is set to start at 5PM UTC, note
--     that there could be a delay of 0-20 minutes from the actual
--     requested time to run the execution.
--
-- -   We recommend that if you would like a daily schedule, you do not
--     provide this parameter. Amazon SageMaker will pick a time for
--     running every day.
newScheduleConfig ::
  -- | 'scheduleExpression'
  Prelude.Text ->
  ScheduleConfig
newScheduleConfig pScheduleExpression_ =
  ScheduleConfig'
    { scheduleExpression =
        pScheduleExpression_
    }

-- | A cron expression that describes details about the monitoring schedule.
--
-- Currently the only supported cron expressions are:
--
-- -   If you want to set the job to start every hour, please use the
--     following:
--
--     @Hourly: cron(0 * ? * * *)@
--
-- -   If you want to start the job daily:
--
--     @cron(0 [00-23] ? * * *)@
--
-- For example, the following are valid cron expressions:
--
-- -   Daily at noon UTC: @cron(0 12 ? * * *)@
--
-- -   Daily at midnight UTC: @cron(0 0 ? * * *)@
--
-- To support running every 6, 12 hours, the following are also supported:
--
-- @cron(0 [00-23]\/[01-24] ? * * *)@
--
-- For example, the following are valid cron expressions:
--
-- -   Every 12 hours, starting at 5pm UTC: @cron(0 17\/12 ? * * *)@
--
-- -   Every two hours starting at midnight: @cron(0 0\/2 ? * * *)@
--
-- -   Even though the cron expression is set to start at 5PM UTC, note
--     that there could be a delay of 0-20 minutes from the actual
--     requested time to run the execution.
--
-- -   We recommend that if you would like a daily schedule, you do not
--     provide this parameter. Amazon SageMaker will pick a time for
--     running every day.
scheduleConfig_scheduleExpression :: Lens.Lens' ScheduleConfig Prelude.Text
scheduleConfig_scheduleExpression = Lens.lens (\ScheduleConfig' {scheduleExpression} -> scheduleExpression) (\s@ScheduleConfig' {} a -> s {scheduleExpression = a} :: ScheduleConfig)

instance Data.FromJSON ScheduleConfig where
  parseJSON =
    Data.withObject
      "ScheduleConfig"
      ( \x ->
          ScheduleConfig'
            Prelude.<$> (x Data..: "ScheduleExpression")
      )

instance Prelude.Hashable ScheduleConfig where
  hashWithSalt _salt ScheduleConfig' {..} =
    _salt `Prelude.hashWithSalt` scheduleExpression

instance Prelude.NFData ScheduleConfig where
  rnf ScheduleConfig' {..} =
    Prelude.rnf scheduleExpression

instance Data.ToJSON ScheduleConfig where
  toJSON ScheduleConfig' {..} =
    Data.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ScheduleExpression" Data..= scheduleExpression)
          ]
      )
