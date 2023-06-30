{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.IAM.TagRole
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds one or more tags to an IAM role. The role can be a regular role or
-- a service-linked role. If a tag with the same key name already exists,
-- then that tag is overwritten with the new value.
--
-- A tag consists of a key name and an associated value. By assigning tags
-- to your resources, you can do the following:
--
-- -   __Administrative grouping and discovery__ - Attach tags to resources
--     to aid in organization and search. For example, you could search for
--     all resources with the key name /Project/ and the value
--     /MyImportantProject/. Or search for all resources with the key name
--     /Cost Center/ and the value /41200/.
--
-- -   __Access control__ - Include tags in IAM user-based and
--     resource-based policies. You can use tags to restrict access to only
--     an IAM role that has a specified tag attached. You can also restrict
--     access to only those resources that have a certain tag attached. For
--     examples of policies that show how to use tags to control access,
--     see
--     <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html Control access using IAM tags>
--     in the /IAM User Guide/.
--
-- -   __Cost allocation__ - Use tags to help track which individuals and
--     teams are using which Amazon Web Services resources.
--
-- -   If any one of the tags is invalid or if you exceed the allowed
--     maximum number of tags, then the entire request fails and the
--     resource is not created. For more information about tagging, see
--     <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources>
--     in the /IAM User Guide/.
--
-- -   Amazon Web Services always interprets the tag @Value@ as a single
--     string. If you need to store an array, you can store comma-separated
--     values in the string. However, you must interpret the value in your
--     code.
--
-- For more information about tagging, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM identities>
-- in the /IAM User Guide/.
module Amazonka.IAM.TagRole
  ( -- * Creating a Request
    TagRole (..),
    newTagRole,

    -- * Request Lenses
    tagRole_roleName,
    tagRole_tags,

    -- * Destructuring the Response
    TagRoleResponse (..),
    newTagRoleResponse,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.IAM.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newTagRole' smart constructor.
data TagRole = TagRole'
  { -- | The name of the IAM role to which you want to add tags.
    --
    -- This parameter accepts (through its
    -- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
    -- that consist of upper and lowercase alphanumeric characters with no
    -- spaces. You can also include any of the following characters: _+=,.\@-
    roleName :: Prelude.Text,
    -- | The list of tags that you want to attach to the IAM role. Each tag
    -- consists of a key name and an associated value.
    tags :: [Tag]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TagRole' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'roleName', 'tagRole_roleName' - The name of the IAM role to which you want to add tags.
--
-- This parameter accepts (through its
-- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
-- that consist of upper and lowercase alphanumeric characters with no
-- spaces. You can also include any of the following characters: _+=,.\@-
--
-- 'tags', 'tagRole_tags' - The list of tags that you want to attach to the IAM role. Each tag
-- consists of a key name and an associated value.
newTagRole ::
  -- | 'roleName'
  Prelude.Text ->
  TagRole
newTagRole pRoleName_ =
  TagRole'
    { roleName = pRoleName_,
      tags = Prelude.mempty
    }

-- | The name of the IAM role to which you want to add tags.
--
-- This parameter accepts (through its
-- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
-- that consist of upper and lowercase alphanumeric characters with no
-- spaces. You can also include any of the following characters: _+=,.\@-
tagRole_roleName :: Lens.Lens' TagRole Prelude.Text
tagRole_roleName = Lens.lens (\TagRole' {roleName} -> roleName) (\s@TagRole' {} a -> s {roleName = a} :: TagRole)

-- | The list of tags that you want to attach to the IAM role. Each tag
-- consists of a key name and an associated value.
tagRole_tags :: Lens.Lens' TagRole [Tag]
tagRole_tags = Lens.lens (\TagRole' {tags} -> tags) (\s@TagRole' {} a -> s {tags = a} :: TagRole) Prelude.. Lens.coerced

instance Core.AWSRequest TagRole where
  type AWSResponse TagRole = TagRoleResponse
  request overrides =
    Request.postQuery (overrides defaultService)
  response = Response.receiveNull TagRoleResponse'

instance Prelude.Hashable TagRole where
  hashWithSalt _salt TagRole' {..} =
    _salt
      `Prelude.hashWithSalt` roleName
      `Prelude.hashWithSalt` tags

instance Prelude.NFData TagRole where
  rnf TagRole' {..} =
    Prelude.rnf roleName `Prelude.seq` Prelude.rnf tags

instance Data.ToHeaders TagRole where
  toHeaders = Prelude.const Prelude.mempty

instance Data.ToPath TagRole where
  toPath = Prelude.const "/"

instance Data.ToQuery TagRole where
  toQuery TagRole' {..} =
    Prelude.mconcat
      [ "Action" Data.=: ("TagRole" :: Prelude.ByteString),
        "Version"
          Data.=: ("2010-05-08" :: Prelude.ByteString),
        "RoleName" Data.=: roleName,
        "Tags" Data.=: Data.toQueryList "member" tags
      ]

-- | /See:/ 'newTagRoleResponse' smart constructor.
data TagRoleResponse = TagRoleResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TagRoleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newTagRoleResponse ::
  TagRoleResponse
newTagRoleResponse = TagRoleResponse'

instance Prelude.NFData TagRoleResponse where
  rnf _ = ()
