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
-- Module      : Amazonka.SWF.Types.RequestCancelActivityTaskFailedEventAttributes
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SWF.Types.RequestCancelActivityTaskFailedEventAttributes where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import Amazonka.SWF.Types.RequestCancelActivityTaskFailedCause

-- | Provides the details of the @RequestCancelActivityTaskFailed@ event.
--
-- /See:/ 'newRequestCancelActivityTaskFailedEventAttributes' smart constructor.
data RequestCancelActivityTaskFailedEventAttributes = RequestCancelActivityTaskFailedEventAttributes'
  { -- | The activityId provided in the @RequestCancelActivityTask@ decision that
    -- failed.
    activityId :: Prelude.Text,
    -- | The cause of the failure. This information is generated by the system
    -- and can be useful for diagnostic purposes.
    --
    -- If @cause@ is set to @OPERATION_NOT_PERMITTED@, the decision failed
    -- because it lacked sufficient permissions. For details and example IAM
    -- policies, see
    -- <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>
    -- in the /Amazon SWF Developer Guide/.
    cause :: RequestCancelActivityTaskFailedCause,
    -- | The ID of the @DecisionTaskCompleted@ event corresponding to the
    -- decision task that resulted in the @RequestCancelActivityTask@ decision
    -- for this cancellation request. This information can be useful for
    -- diagnosing problems by tracing back the chain of events leading up to
    -- this event.
    decisionTaskCompletedEventId :: Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RequestCancelActivityTaskFailedEventAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'activityId', 'requestCancelActivityTaskFailedEventAttributes_activityId' - The activityId provided in the @RequestCancelActivityTask@ decision that
-- failed.
--
-- 'cause', 'requestCancelActivityTaskFailedEventAttributes_cause' - The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If @cause@ is set to @OPERATION_NOT_PERMITTED@, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>
-- in the /Amazon SWF Developer Guide/.
--
-- 'decisionTaskCompletedEventId', 'requestCancelActivityTaskFailedEventAttributes_decisionTaskCompletedEventId' - The ID of the @DecisionTaskCompleted@ event corresponding to the
-- decision task that resulted in the @RequestCancelActivityTask@ decision
-- for this cancellation request. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
newRequestCancelActivityTaskFailedEventAttributes ::
  -- | 'activityId'
  Prelude.Text ->
  -- | 'cause'
  RequestCancelActivityTaskFailedCause ->
  -- | 'decisionTaskCompletedEventId'
  Prelude.Integer ->
  RequestCancelActivityTaskFailedEventAttributes
newRequestCancelActivityTaskFailedEventAttributes
  pActivityId_
  pCause_
  pDecisionTaskCompletedEventId_ =
    RequestCancelActivityTaskFailedEventAttributes'
      { activityId =
          pActivityId_,
        cause = pCause_,
        decisionTaskCompletedEventId =
          pDecisionTaskCompletedEventId_
      }

-- | The activityId provided in the @RequestCancelActivityTask@ decision that
-- failed.
requestCancelActivityTaskFailedEventAttributes_activityId :: Lens.Lens' RequestCancelActivityTaskFailedEventAttributes Prelude.Text
requestCancelActivityTaskFailedEventAttributes_activityId = Lens.lens (\RequestCancelActivityTaskFailedEventAttributes' {activityId} -> activityId) (\s@RequestCancelActivityTaskFailedEventAttributes' {} a -> s {activityId = a} :: RequestCancelActivityTaskFailedEventAttributes)

-- | The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If @cause@ is set to @OPERATION_NOT_PERMITTED@, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>
-- in the /Amazon SWF Developer Guide/.
requestCancelActivityTaskFailedEventAttributes_cause :: Lens.Lens' RequestCancelActivityTaskFailedEventAttributes RequestCancelActivityTaskFailedCause
requestCancelActivityTaskFailedEventAttributes_cause = Lens.lens (\RequestCancelActivityTaskFailedEventAttributes' {cause} -> cause) (\s@RequestCancelActivityTaskFailedEventAttributes' {} a -> s {cause = a} :: RequestCancelActivityTaskFailedEventAttributes)

-- | The ID of the @DecisionTaskCompleted@ event corresponding to the
-- decision task that resulted in the @RequestCancelActivityTask@ decision
-- for this cancellation request. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
requestCancelActivityTaskFailedEventAttributes_decisionTaskCompletedEventId :: Lens.Lens' RequestCancelActivityTaskFailedEventAttributes Prelude.Integer
requestCancelActivityTaskFailedEventAttributes_decisionTaskCompletedEventId = Lens.lens (\RequestCancelActivityTaskFailedEventAttributes' {decisionTaskCompletedEventId} -> decisionTaskCompletedEventId) (\s@RequestCancelActivityTaskFailedEventAttributes' {} a -> s {decisionTaskCompletedEventId = a} :: RequestCancelActivityTaskFailedEventAttributes)

instance
  Data.FromJSON
    RequestCancelActivityTaskFailedEventAttributes
  where
  parseJSON =
    Data.withObject
      "RequestCancelActivityTaskFailedEventAttributes"
      ( \x ->
          RequestCancelActivityTaskFailedEventAttributes'
            Prelude.<$> (x Data..: "activityId")
            Prelude.<*> (x Data..: "cause")
            Prelude.<*> (x Data..: "decisionTaskCompletedEventId")
      )

instance
  Prelude.Hashable
    RequestCancelActivityTaskFailedEventAttributes
  where
  hashWithSalt
    _salt
    RequestCancelActivityTaskFailedEventAttributes' {..} =
      _salt
        `Prelude.hashWithSalt` activityId
        `Prelude.hashWithSalt` cause
        `Prelude.hashWithSalt` decisionTaskCompletedEventId

instance
  Prelude.NFData
    RequestCancelActivityTaskFailedEventAttributes
  where
  rnf
    RequestCancelActivityTaskFailedEventAttributes' {..} =
      Prelude.rnf activityId
        `Prelude.seq` Prelude.rnf cause
        `Prelude.seq` Prelude.rnf decisionTaskCompletedEventId
