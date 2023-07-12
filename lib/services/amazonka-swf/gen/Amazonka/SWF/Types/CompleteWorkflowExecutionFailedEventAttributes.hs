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
-- Module      : Amazonka.SWF.Types.CompleteWorkflowExecutionFailedEventAttributes
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SWF.Types.CompleteWorkflowExecutionFailedEventAttributes where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import Amazonka.SWF.Types.CompleteWorkflowExecutionFailedCause

-- | Provides the details of the @CompleteWorkflowExecutionFailed@ event.
--
-- /See:/ 'newCompleteWorkflowExecutionFailedEventAttributes' smart constructor.
data CompleteWorkflowExecutionFailedEventAttributes = CompleteWorkflowExecutionFailedEventAttributes'
  { -- | The cause of the failure. This information is generated by the system
    -- and can be useful for diagnostic purposes.
    --
    -- If @cause@ is set to @OPERATION_NOT_PERMITTED@, the decision failed
    -- because it lacked sufficient permissions. For details and example IAM
    -- policies, see
    -- <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>
    -- in the /Amazon SWF Developer Guide/.
    cause :: CompleteWorkflowExecutionFailedCause,
    -- | The ID of the @DecisionTaskCompleted@ event corresponding to the
    -- decision task that resulted in the @CompleteWorkflowExecution@ decision
    -- to complete this execution. This information can be useful for
    -- diagnosing problems by tracing back the chain of events leading up to
    -- this event.
    decisionTaskCompletedEventId :: Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CompleteWorkflowExecutionFailedEventAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cause', 'completeWorkflowExecutionFailedEventAttributes_cause' - The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If @cause@ is set to @OPERATION_NOT_PERMITTED@, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>
-- in the /Amazon SWF Developer Guide/.
--
-- 'decisionTaskCompletedEventId', 'completeWorkflowExecutionFailedEventAttributes_decisionTaskCompletedEventId' - The ID of the @DecisionTaskCompleted@ event corresponding to the
-- decision task that resulted in the @CompleteWorkflowExecution@ decision
-- to complete this execution. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
newCompleteWorkflowExecutionFailedEventAttributes ::
  -- | 'cause'
  CompleteWorkflowExecutionFailedCause ->
  -- | 'decisionTaskCompletedEventId'
  Prelude.Integer ->
  CompleteWorkflowExecutionFailedEventAttributes
newCompleteWorkflowExecutionFailedEventAttributes
  pCause_
  pDecisionTaskCompletedEventId_ =
    CompleteWorkflowExecutionFailedEventAttributes'
      { cause =
          pCause_,
        decisionTaskCompletedEventId =
          pDecisionTaskCompletedEventId_
      }

-- | The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If @cause@ is set to @OPERATION_NOT_PERMITTED@, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>
-- in the /Amazon SWF Developer Guide/.
completeWorkflowExecutionFailedEventAttributes_cause :: Lens.Lens' CompleteWorkflowExecutionFailedEventAttributes CompleteWorkflowExecutionFailedCause
completeWorkflowExecutionFailedEventAttributes_cause = Lens.lens (\CompleteWorkflowExecutionFailedEventAttributes' {cause} -> cause) (\s@CompleteWorkflowExecutionFailedEventAttributes' {} a -> s {cause = a} :: CompleteWorkflowExecutionFailedEventAttributes)

-- | The ID of the @DecisionTaskCompleted@ event corresponding to the
-- decision task that resulted in the @CompleteWorkflowExecution@ decision
-- to complete this execution. This information can be useful for
-- diagnosing problems by tracing back the chain of events leading up to
-- this event.
completeWorkflowExecutionFailedEventAttributes_decisionTaskCompletedEventId :: Lens.Lens' CompleteWorkflowExecutionFailedEventAttributes Prelude.Integer
completeWorkflowExecutionFailedEventAttributes_decisionTaskCompletedEventId = Lens.lens (\CompleteWorkflowExecutionFailedEventAttributes' {decisionTaskCompletedEventId} -> decisionTaskCompletedEventId) (\s@CompleteWorkflowExecutionFailedEventAttributes' {} a -> s {decisionTaskCompletedEventId = a} :: CompleteWorkflowExecutionFailedEventAttributes)

instance
  Data.FromJSON
    CompleteWorkflowExecutionFailedEventAttributes
  where
  parseJSON =
    Data.withObject
      "CompleteWorkflowExecutionFailedEventAttributes"
      ( \x ->
          CompleteWorkflowExecutionFailedEventAttributes'
            Prelude.<$> (x Data..: "cause")
            Prelude.<*> (x Data..: "decisionTaskCompletedEventId")
      )

instance
  Prelude.Hashable
    CompleteWorkflowExecutionFailedEventAttributes
  where
  hashWithSalt
    _salt
    CompleteWorkflowExecutionFailedEventAttributes' {..} =
      _salt
        `Prelude.hashWithSalt` cause
        `Prelude.hashWithSalt` decisionTaskCompletedEventId

instance
  Prelude.NFData
    CompleteWorkflowExecutionFailedEventAttributes
  where
  rnf
    CompleteWorkflowExecutionFailedEventAttributes' {..} =
      Prelude.rnf cause
        `Prelude.seq` Prelude.rnf decisionTaskCompletedEventId
