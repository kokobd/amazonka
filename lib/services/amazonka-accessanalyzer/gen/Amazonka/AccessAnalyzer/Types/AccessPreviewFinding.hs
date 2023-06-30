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
-- Module      : Amazonka.AccessAnalyzer.Types.AccessPreviewFinding
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AccessAnalyzer.Types.AccessPreviewFinding where

import Amazonka.AccessAnalyzer.Types.FindingChangeType
import Amazonka.AccessAnalyzer.Types.FindingSource
import Amazonka.AccessAnalyzer.Types.FindingStatus
import Amazonka.AccessAnalyzer.Types.ResourceType
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | An access preview finding generated by the access preview.
--
-- /See:/ 'newAccessPreviewFinding' smart constructor.
data AccessPreviewFinding = AccessPreviewFinding'
  { -- | The action in the analyzed policy statement that an external principal
    -- has permission to perform.
    action :: Prelude.Maybe [Prelude.Text],
    -- | The condition in the analyzed policy statement that resulted in a
    -- finding.
    condition :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | An error.
    error :: Prelude.Maybe Prelude.Text,
    -- | The existing ID of the finding in IAM Access Analyzer, provided only for
    -- existing findings.
    existingFindingId :: Prelude.Maybe Prelude.Text,
    -- | The existing status of the finding, provided only for existing findings.
    existingFindingStatus :: Prelude.Maybe FindingStatus,
    -- | Indicates whether the policy that generated the finding allows public
    -- access to the resource.
    isPublic :: Prelude.Maybe Prelude.Bool,
    -- | The external principal that has access to a resource within the zone of
    -- trust.
    principal :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The resource that an external principal has access to. This is the
    -- resource associated with the access preview.
    resource :: Prelude.Maybe Prelude.Text,
    -- | The sources of the finding. This indicates how the access that generated
    -- the finding is granted. It is populated for Amazon S3 bucket findings.
    sources :: Prelude.Maybe [FindingSource],
    -- | The ID of the access preview finding. This ID uniquely identifies the
    -- element in the list of access preview findings and is not related to the
    -- finding ID in Access Analyzer.
    id :: Prelude.Text,
    -- | The type of the resource that can be accessed in the finding.
    resourceType :: ResourceType,
    -- | The time at which the access preview finding was created.
    createdAt :: Data.ISO8601,
    -- | Provides context on how the access preview finding compares to existing
    -- access identified in IAM Access Analyzer.
    --
    -- -   @New@ - The finding is for newly-introduced access.
    --
    -- -   @Unchanged@ - The preview finding is an existing finding that would
    --     remain unchanged.
    --
    -- -   @Changed@ - The preview finding is an existing finding with a change
    --     in status.
    --
    -- For example, a @Changed@ finding with preview status @Resolved@ and
    -- existing status @Active@ indicates the existing @Active@ finding would
    -- become @Resolved@ as a result of the proposed permissions change.
    changeType :: FindingChangeType,
    -- | The preview status of the finding. This is what the status of the
    -- finding would be after permissions deployment. For example, a @Changed@
    -- finding with preview status @Resolved@ and existing status @Active@
    -- indicates the existing @Active@ finding would become @Resolved@ as a
    -- result of the proposed permissions change.
    status :: FindingStatus,
    -- | The Amazon Web Services account ID that owns the resource. For most
    -- Amazon Web Services resources, the owning account is the account in
    -- which the resource was created.
    resourceOwnerAccount :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AccessPreviewFinding' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'action', 'accessPreviewFinding_action' - The action in the analyzed policy statement that an external principal
-- has permission to perform.
--
-- 'condition', 'accessPreviewFinding_condition' - The condition in the analyzed policy statement that resulted in a
-- finding.
--
-- 'error', 'accessPreviewFinding_error' - An error.
--
-- 'existingFindingId', 'accessPreviewFinding_existingFindingId' - The existing ID of the finding in IAM Access Analyzer, provided only for
-- existing findings.
--
-- 'existingFindingStatus', 'accessPreviewFinding_existingFindingStatus' - The existing status of the finding, provided only for existing findings.
--
-- 'isPublic', 'accessPreviewFinding_isPublic' - Indicates whether the policy that generated the finding allows public
-- access to the resource.
--
-- 'principal', 'accessPreviewFinding_principal' - The external principal that has access to a resource within the zone of
-- trust.
--
-- 'resource', 'accessPreviewFinding_resource' - The resource that an external principal has access to. This is the
-- resource associated with the access preview.
--
-- 'sources', 'accessPreviewFinding_sources' - The sources of the finding. This indicates how the access that generated
-- the finding is granted. It is populated for Amazon S3 bucket findings.
--
-- 'id', 'accessPreviewFinding_id' - The ID of the access preview finding. This ID uniquely identifies the
-- element in the list of access preview findings and is not related to the
-- finding ID in Access Analyzer.
--
-- 'resourceType', 'accessPreviewFinding_resourceType' - The type of the resource that can be accessed in the finding.
--
-- 'createdAt', 'accessPreviewFinding_createdAt' - The time at which the access preview finding was created.
--
-- 'changeType', 'accessPreviewFinding_changeType' - Provides context on how the access preview finding compares to existing
-- access identified in IAM Access Analyzer.
--
-- -   @New@ - The finding is for newly-introduced access.
--
-- -   @Unchanged@ - The preview finding is an existing finding that would
--     remain unchanged.
--
-- -   @Changed@ - The preview finding is an existing finding with a change
--     in status.
--
-- For example, a @Changed@ finding with preview status @Resolved@ and
-- existing status @Active@ indicates the existing @Active@ finding would
-- become @Resolved@ as a result of the proposed permissions change.
--
-- 'status', 'accessPreviewFinding_status' - The preview status of the finding. This is what the status of the
-- finding would be after permissions deployment. For example, a @Changed@
-- finding with preview status @Resolved@ and existing status @Active@
-- indicates the existing @Active@ finding would become @Resolved@ as a
-- result of the proposed permissions change.
--
-- 'resourceOwnerAccount', 'accessPreviewFinding_resourceOwnerAccount' - The Amazon Web Services account ID that owns the resource. For most
-- Amazon Web Services resources, the owning account is the account in
-- which the resource was created.
newAccessPreviewFinding ::
  -- | 'id'
  Prelude.Text ->
  -- | 'resourceType'
  ResourceType ->
  -- | 'createdAt'
  Prelude.UTCTime ->
  -- | 'changeType'
  FindingChangeType ->
  -- | 'status'
  FindingStatus ->
  -- | 'resourceOwnerAccount'
  Prelude.Text ->
  AccessPreviewFinding
newAccessPreviewFinding
  pId_
  pResourceType_
  pCreatedAt_
  pChangeType_
  pStatus_
  pResourceOwnerAccount_ =
    AccessPreviewFinding'
      { action = Prelude.Nothing,
        condition = Prelude.Nothing,
        error = Prelude.Nothing,
        existingFindingId = Prelude.Nothing,
        existingFindingStatus = Prelude.Nothing,
        isPublic = Prelude.Nothing,
        principal = Prelude.Nothing,
        resource = Prelude.Nothing,
        sources = Prelude.Nothing,
        id = pId_,
        resourceType = pResourceType_,
        createdAt = Data._Time Lens.# pCreatedAt_,
        changeType = pChangeType_,
        status = pStatus_,
        resourceOwnerAccount = pResourceOwnerAccount_
      }

-- | The action in the analyzed policy statement that an external principal
-- has permission to perform.
accessPreviewFinding_action :: Lens.Lens' AccessPreviewFinding (Prelude.Maybe [Prelude.Text])
accessPreviewFinding_action = Lens.lens (\AccessPreviewFinding' {action} -> action) (\s@AccessPreviewFinding' {} a -> s {action = a} :: AccessPreviewFinding) Prelude.. Lens.mapping Lens.coerced

-- | The condition in the analyzed policy statement that resulted in a
-- finding.
accessPreviewFinding_condition :: Lens.Lens' AccessPreviewFinding (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
accessPreviewFinding_condition = Lens.lens (\AccessPreviewFinding' {condition} -> condition) (\s@AccessPreviewFinding' {} a -> s {condition = a} :: AccessPreviewFinding) Prelude.. Lens.mapping Lens.coerced

-- | An error.
accessPreviewFinding_error :: Lens.Lens' AccessPreviewFinding (Prelude.Maybe Prelude.Text)
accessPreviewFinding_error = Lens.lens (\AccessPreviewFinding' {error} -> error) (\s@AccessPreviewFinding' {} a -> s {error = a} :: AccessPreviewFinding)

-- | The existing ID of the finding in IAM Access Analyzer, provided only for
-- existing findings.
accessPreviewFinding_existingFindingId :: Lens.Lens' AccessPreviewFinding (Prelude.Maybe Prelude.Text)
accessPreviewFinding_existingFindingId = Lens.lens (\AccessPreviewFinding' {existingFindingId} -> existingFindingId) (\s@AccessPreviewFinding' {} a -> s {existingFindingId = a} :: AccessPreviewFinding)

-- | The existing status of the finding, provided only for existing findings.
accessPreviewFinding_existingFindingStatus :: Lens.Lens' AccessPreviewFinding (Prelude.Maybe FindingStatus)
accessPreviewFinding_existingFindingStatus = Lens.lens (\AccessPreviewFinding' {existingFindingStatus} -> existingFindingStatus) (\s@AccessPreviewFinding' {} a -> s {existingFindingStatus = a} :: AccessPreviewFinding)

-- | Indicates whether the policy that generated the finding allows public
-- access to the resource.
accessPreviewFinding_isPublic :: Lens.Lens' AccessPreviewFinding (Prelude.Maybe Prelude.Bool)
accessPreviewFinding_isPublic = Lens.lens (\AccessPreviewFinding' {isPublic} -> isPublic) (\s@AccessPreviewFinding' {} a -> s {isPublic = a} :: AccessPreviewFinding)

-- | The external principal that has access to a resource within the zone of
-- trust.
accessPreviewFinding_principal :: Lens.Lens' AccessPreviewFinding (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
accessPreviewFinding_principal = Lens.lens (\AccessPreviewFinding' {principal} -> principal) (\s@AccessPreviewFinding' {} a -> s {principal = a} :: AccessPreviewFinding) Prelude.. Lens.mapping Lens.coerced

-- | The resource that an external principal has access to. This is the
-- resource associated with the access preview.
accessPreviewFinding_resource :: Lens.Lens' AccessPreviewFinding (Prelude.Maybe Prelude.Text)
accessPreviewFinding_resource = Lens.lens (\AccessPreviewFinding' {resource} -> resource) (\s@AccessPreviewFinding' {} a -> s {resource = a} :: AccessPreviewFinding)

-- | The sources of the finding. This indicates how the access that generated
-- the finding is granted. It is populated for Amazon S3 bucket findings.
accessPreviewFinding_sources :: Lens.Lens' AccessPreviewFinding (Prelude.Maybe [FindingSource])
accessPreviewFinding_sources = Lens.lens (\AccessPreviewFinding' {sources} -> sources) (\s@AccessPreviewFinding' {} a -> s {sources = a} :: AccessPreviewFinding) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the access preview finding. This ID uniquely identifies the
-- element in the list of access preview findings and is not related to the
-- finding ID in Access Analyzer.
accessPreviewFinding_id :: Lens.Lens' AccessPreviewFinding Prelude.Text
accessPreviewFinding_id = Lens.lens (\AccessPreviewFinding' {id} -> id) (\s@AccessPreviewFinding' {} a -> s {id = a} :: AccessPreviewFinding)

-- | The type of the resource that can be accessed in the finding.
accessPreviewFinding_resourceType :: Lens.Lens' AccessPreviewFinding ResourceType
accessPreviewFinding_resourceType = Lens.lens (\AccessPreviewFinding' {resourceType} -> resourceType) (\s@AccessPreviewFinding' {} a -> s {resourceType = a} :: AccessPreviewFinding)

-- | The time at which the access preview finding was created.
accessPreviewFinding_createdAt :: Lens.Lens' AccessPreviewFinding Prelude.UTCTime
accessPreviewFinding_createdAt = Lens.lens (\AccessPreviewFinding' {createdAt} -> createdAt) (\s@AccessPreviewFinding' {} a -> s {createdAt = a} :: AccessPreviewFinding) Prelude.. Data._Time

-- | Provides context on how the access preview finding compares to existing
-- access identified in IAM Access Analyzer.
--
-- -   @New@ - The finding is for newly-introduced access.
--
-- -   @Unchanged@ - The preview finding is an existing finding that would
--     remain unchanged.
--
-- -   @Changed@ - The preview finding is an existing finding with a change
--     in status.
--
-- For example, a @Changed@ finding with preview status @Resolved@ and
-- existing status @Active@ indicates the existing @Active@ finding would
-- become @Resolved@ as a result of the proposed permissions change.
accessPreviewFinding_changeType :: Lens.Lens' AccessPreviewFinding FindingChangeType
accessPreviewFinding_changeType = Lens.lens (\AccessPreviewFinding' {changeType} -> changeType) (\s@AccessPreviewFinding' {} a -> s {changeType = a} :: AccessPreviewFinding)

-- | The preview status of the finding. This is what the status of the
-- finding would be after permissions deployment. For example, a @Changed@
-- finding with preview status @Resolved@ and existing status @Active@
-- indicates the existing @Active@ finding would become @Resolved@ as a
-- result of the proposed permissions change.
accessPreviewFinding_status :: Lens.Lens' AccessPreviewFinding FindingStatus
accessPreviewFinding_status = Lens.lens (\AccessPreviewFinding' {status} -> status) (\s@AccessPreviewFinding' {} a -> s {status = a} :: AccessPreviewFinding)

-- | The Amazon Web Services account ID that owns the resource. For most
-- Amazon Web Services resources, the owning account is the account in
-- which the resource was created.
accessPreviewFinding_resourceOwnerAccount :: Lens.Lens' AccessPreviewFinding Prelude.Text
accessPreviewFinding_resourceOwnerAccount = Lens.lens (\AccessPreviewFinding' {resourceOwnerAccount} -> resourceOwnerAccount) (\s@AccessPreviewFinding' {} a -> s {resourceOwnerAccount = a} :: AccessPreviewFinding)

instance Data.FromJSON AccessPreviewFinding where
  parseJSON =
    Data.withObject
      "AccessPreviewFinding"
      ( \x ->
          AccessPreviewFinding'
            Prelude.<$> (x Data..:? "action" Data..!= Prelude.mempty)
            Prelude.<*> (x Data..:? "condition" Data..!= Prelude.mempty)
            Prelude.<*> (x Data..:? "error")
            Prelude.<*> (x Data..:? "existingFindingId")
            Prelude.<*> (x Data..:? "existingFindingStatus")
            Prelude.<*> (x Data..:? "isPublic")
            Prelude.<*> (x Data..:? "principal" Data..!= Prelude.mempty)
            Prelude.<*> (x Data..:? "resource")
            Prelude.<*> (x Data..:? "sources" Data..!= Prelude.mempty)
            Prelude.<*> (x Data..: "id")
            Prelude.<*> (x Data..: "resourceType")
            Prelude.<*> (x Data..: "createdAt")
            Prelude.<*> (x Data..: "changeType")
            Prelude.<*> (x Data..: "status")
            Prelude.<*> (x Data..: "resourceOwnerAccount")
      )

instance Prelude.Hashable AccessPreviewFinding where
  hashWithSalt _salt AccessPreviewFinding' {..} =
    _salt
      `Prelude.hashWithSalt` action
      `Prelude.hashWithSalt` condition
      `Prelude.hashWithSalt` error
      `Prelude.hashWithSalt` existingFindingId
      `Prelude.hashWithSalt` existingFindingStatus
      `Prelude.hashWithSalt` isPublic
      `Prelude.hashWithSalt` principal
      `Prelude.hashWithSalt` resource
      `Prelude.hashWithSalt` sources
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` resourceType
      `Prelude.hashWithSalt` createdAt
      `Prelude.hashWithSalt` changeType
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` resourceOwnerAccount

instance Prelude.NFData AccessPreviewFinding where
  rnf AccessPreviewFinding' {..} =
    Prelude.rnf action
      `Prelude.seq` Prelude.rnf condition
      `Prelude.seq` Prelude.rnf error
      `Prelude.seq` Prelude.rnf existingFindingId
      `Prelude.seq` Prelude.rnf existingFindingStatus
      `Prelude.seq` Prelude.rnf isPublic
      `Prelude.seq` Prelude.rnf principal
      `Prelude.seq` Prelude.rnf resource
      `Prelude.seq` Prelude.rnf sources
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf resourceType
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf changeType
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf resourceOwnerAccount
