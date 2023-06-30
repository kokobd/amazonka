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
-- Module      : Amazonka.DevOpsGuru.Types.PerformanceInsightsMetricDimensionGroup
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DevOpsGuru.Types.PerformanceInsightsMetricDimensionGroup where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A logical grouping of Performance Insights metrics for a related subject
-- area. For example, the @db.sql@ dimension group consists of the
-- following dimensions: @db.sql.id@, @db.sql.db_id@, @db.sql.statement@,
-- and @db.sql.tokenized_id@.
--
-- Each response element returns a maximum of 500 bytes. For larger
-- elements, such as SQL statements, only the first 500 bytes are returned.
--
-- Amazon RDS Performance Insights enables you to monitor and explore
-- different dimensions of database load based on data captured from a
-- running DB instance. DB load is measured as average active sessions.
-- Performance Insights provides the data to API consumers as a
-- two-dimensional time-series dataset. The time dimension provides DB load
-- data for each time point in the queried time range. Each time point
-- decomposes overall load in relation to the requested dimensions,
-- measured at that time point. Examples include SQL, Wait event, User, and
-- Host.
--
-- -   To learn more about Performance Insights and Amazon Aurora DB
--     instances, go to the
--     <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_PerfInsights.html Amazon Aurora User Guide>.
--
-- -   To learn more about Performance Insights and Amazon RDS DB
--     instances, go to the
--     <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html Amazon RDS User Guide>.
--
-- /See:/ 'newPerformanceInsightsMetricDimensionGroup' smart constructor.
data PerformanceInsightsMetricDimensionGroup = PerformanceInsightsMetricDimensionGroup'
  { -- | A list of specific dimensions from a dimension group. If this parameter
    -- is not present, then it signifies that all of the dimensions in the
    -- group were requested or are present in the response.
    --
    -- Valid values for elements in the @Dimensions@ array are:
    --
    -- -   @db.application.name@ - The name of the application that is
    --     connected to the database (only Aurora PostgreSQL and RDS
    --     PostgreSQL)
    --
    -- -   @db.host.id@ - The host ID of the connected client (all engines)
    --
    -- -   @db.host.name@ - The host name of the connected client (all engines)
    --
    -- -   @db.name@ - The name of the database to which the client is
    --     connected (only Aurora PostgreSQL, Amazon RDS PostgreSQL, Aurora
    --     MySQL, Amazon RDS MySQL, and MariaDB)
    --
    -- -   @db.session_type.name@ - The type of the current session (only
    --     Aurora PostgreSQL and RDS PostgreSQL)
    --
    -- -   @db.sql.id@ - The SQL ID generated by Performance Insights (all
    --     engines)
    --
    -- -   @db.sql.db_id@ - The SQL ID generated by the database (all engines)
    --
    -- -   @db.sql.statement@ - The SQL text that is being executed (all
    --     engines)
    --
    -- -   @db.sql.tokenized_id@
    --
    -- -   @db.sql_tokenized.id@ - The SQL digest ID generated by Performance
    --     Insights (all engines)
    --
    -- -   @db.sql_tokenized.db_id@ - SQL digest ID generated by the database
    --     (all engines)
    --
    -- -   @db.sql_tokenized.statement@ - The SQL digest text (all engines)
    --
    -- -   @db.user.id@ - The ID of the user logged in to the database (all
    --     engines)
    --
    -- -   @db.user.name@ - The name of the user logged in to the database (all
    --     engines)
    --
    -- -   @db.wait_event.name@ - The event for which the backend is waiting
    --     (all engines)
    --
    -- -   @db.wait_event.type@ - The type of event for which the backend is
    --     waiting (all engines)
    --
    -- -   @db.wait_event_type.name@ - The name of the event type for which the
    --     backend is waiting (all engines)
    dimensions :: Prelude.Maybe [Prelude.Text],
    -- | The name of the dimension group. Its valid values are:
    --
    -- -   @db@ - The name of the database to which the client is connected
    --     (only Aurora PostgreSQL, Amazon RDS PostgreSQL, Aurora MySQL, Amazon
    --     RDS MySQL, and MariaDB)
    --
    -- -   @db.application@ - The name of the application that is connected to
    --     the database (only Aurora PostgreSQL and RDS PostgreSQL)
    --
    -- -   @db.host@ - The host name of the connected client (all engines)
    --
    -- -   @db.session_type@ - The type of the current session (only Aurora
    --     PostgreSQL and RDS PostgreSQL)
    --
    -- -   @db.sql@ - The SQL that is currently executing (all engines)
    --
    -- -   @db.sql_tokenized@ - The SQL digest (all engines)
    --
    -- -   @db.wait_event@ - The event for which the database backend is
    --     waiting (all engines)
    --
    -- -   @db.wait_event_type@ - The type of event for which the database
    --     backend is waiting (all engines)
    --
    -- -   @db.user@ - The user logged in to the database (all engines)
    group' :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of items to fetch for this dimension group.
    limit :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PerformanceInsightsMetricDimensionGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dimensions', 'performanceInsightsMetricDimensionGroup_dimensions' - A list of specific dimensions from a dimension group. If this parameter
-- is not present, then it signifies that all of the dimensions in the
-- group were requested or are present in the response.
--
-- Valid values for elements in the @Dimensions@ array are:
--
-- -   @db.application.name@ - The name of the application that is
--     connected to the database (only Aurora PostgreSQL and RDS
--     PostgreSQL)
--
-- -   @db.host.id@ - The host ID of the connected client (all engines)
--
-- -   @db.host.name@ - The host name of the connected client (all engines)
--
-- -   @db.name@ - The name of the database to which the client is
--     connected (only Aurora PostgreSQL, Amazon RDS PostgreSQL, Aurora
--     MySQL, Amazon RDS MySQL, and MariaDB)
--
-- -   @db.session_type.name@ - The type of the current session (only
--     Aurora PostgreSQL and RDS PostgreSQL)
--
-- -   @db.sql.id@ - The SQL ID generated by Performance Insights (all
--     engines)
--
-- -   @db.sql.db_id@ - The SQL ID generated by the database (all engines)
--
-- -   @db.sql.statement@ - The SQL text that is being executed (all
--     engines)
--
-- -   @db.sql.tokenized_id@
--
-- -   @db.sql_tokenized.id@ - The SQL digest ID generated by Performance
--     Insights (all engines)
--
-- -   @db.sql_tokenized.db_id@ - SQL digest ID generated by the database
--     (all engines)
--
-- -   @db.sql_tokenized.statement@ - The SQL digest text (all engines)
--
-- -   @db.user.id@ - The ID of the user logged in to the database (all
--     engines)
--
-- -   @db.user.name@ - The name of the user logged in to the database (all
--     engines)
--
-- -   @db.wait_event.name@ - The event for which the backend is waiting
--     (all engines)
--
-- -   @db.wait_event.type@ - The type of event for which the backend is
--     waiting (all engines)
--
-- -   @db.wait_event_type.name@ - The name of the event type for which the
--     backend is waiting (all engines)
--
-- 'group'', 'performanceInsightsMetricDimensionGroup_group' - The name of the dimension group. Its valid values are:
--
-- -   @db@ - The name of the database to which the client is connected
--     (only Aurora PostgreSQL, Amazon RDS PostgreSQL, Aurora MySQL, Amazon
--     RDS MySQL, and MariaDB)
--
-- -   @db.application@ - The name of the application that is connected to
--     the database (only Aurora PostgreSQL and RDS PostgreSQL)
--
-- -   @db.host@ - The host name of the connected client (all engines)
--
-- -   @db.session_type@ - The type of the current session (only Aurora
--     PostgreSQL and RDS PostgreSQL)
--
-- -   @db.sql@ - The SQL that is currently executing (all engines)
--
-- -   @db.sql_tokenized@ - The SQL digest (all engines)
--
-- -   @db.wait_event@ - The event for which the database backend is
--     waiting (all engines)
--
-- -   @db.wait_event_type@ - The type of event for which the database
--     backend is waiting (all engines)
--
-- -   @db.user@ - The user logged in to the database (all engines)
--
-- 'limit', 'performanceInsightsMetricDimensionGroup_limit' - The maximum number of items to fetch for this dimension group.
newPerformanceInsightsMetricDimensionGroup ::
  PerformanceInsightsMetricDimensionGroup
newPerformanceInsightsMetricDimensionGroup =
  PerformanceInsightsMetricDimensionGroup'
    { dimensions =
        Prelude.Nothing,
      group' = Prelude.Nothing,
      limit = Prelude.Nothing
    }

-- | A list of specific dimensions from a dimension group. If this parameter
-- is not present, then it signifies that all of the dimensions in the
-- group were requested or are present in the response.
--
-- Valid values for elements in the @Dimensions@ array are:
--
-- -   @db.application.name@ - The name of the application that is
--     connected to the database (only Aurora PostgreSQL and RDS
--     PostgreSQL)
--
-- -   @db.host.id@ - The host ID of the connected client (all engines)
--
-- -   @db.host.name@ - The host name of the connected client (all engines)
--
-- -   @db.name@ - The name of the database to which the client is
--     connected (only Aurora PostgreSQL, Amazon RDS PostgreSQL, Aurora
--     MySQL, Amazon RDS MySQL, and MariaDB)
--
-- -   @db.session_type.name@ - The type of the current session (only
--     Aurora PostgreSQL and RDS PostgreSQL)
--
-- -   @db.sql.id@ - The SQL ID generated by Performance Insights (all
--     engines)
--
-- -   @db.sql.db_id@ - The SQL ID generated by the database (all engines)
--
-- -   @db.sql.statement@ - The SQL text that is being executed (all
--     engines)
--
-- -   @db.sql.tokenized_id@
--
-- -   @db.sql_tokenized.id@ - The SQL digest ID generated by Performance
--     Insights (all engines)
--
-- -   @db.sql_tokenized.db_id@ - SQL digest ID generated by the database
--     (all engines)
--
-- -   @db.sql_tokenized.statement@ - The SQL digest text (all engines)
--
-- -   @db.user.id@ - The ID of the user logged in to the database (all
--     engines)
--
-- -   @db.user.name@ - The name of the user logged in to the database (all
--     engines)
--
-- -   @db.wait_event.name@ - The event for which the backend is waiting
--     (all engines)
--
-- -   @db.wait_event.type@ - The type of event for which the backend is
--     waiting (all engines)
--
-- -   @db.wait_event_type.name@ - The name of the event type for which the
--     backend is waiting (all engines)
performanceInsightsMetricDimensionGroup_dimensions :: Lens.Lens' PerformanceInsightsMetricDimensionGroup (Prelude.Maybe [Prelude.Text])
performanceInsightsMetricDimensionGroup_dimensions = Lens.lens (\PerformanceInsightsMetricDimensionGroup' {dimensions} -> dimensions) (\s@PerformanceInsightsMetricDimensionGroup' {} a -> s {dimensions = a} :: PerformanceInsightsMetricDimensionGroup) Prelude.. Lens.mapping Lens.coerced

-- | The name of the dimension group. Its valid values are:
--
-- -   @db@ - The name of the database to which the client is connected
--     (only Aurora PostgreSQL, Amazon RDS PostgreSQL, Aurora MySQL, Amazon
--     RDS MySQL, and MariaDB)
--
-- -   @db.application@ - The name of the application that is connected to
--     the database (only Aurora PostgreSQL and RDS PostgreSQL)
--
-- -   @db.host@ - The host name of the connected client (all engines)
--
-- -   @db.session_type@ - The type of the current session (only Aurora
--     PostgreSQL and RDS PostgreSQL)
--
-- -   @db.sql@ - The SQL that is currently executing (all engines)
--
-- -   @db.sql_tokenized@ - The SQL digest (all engines)
--
-- -   @db.wait_event@ - The event for which the database backend is
--     waiting (all engines)
--
-- -   @db.wait_event_type@ - The type of event for which the database
--     backend is waiting (all engines)
--
-- -   @db.user@ - The user logged in to the database (all engines)
performanceInsightsMetricDimensionGroup_group :: Lens.Lens' PerformanceInsightsMetricDimensionGroup (Prelude.Maybe Prelude.Text)
performanceInsightsMetricDimensionGroup_group = Lens.lens (\PerformanceInsightsMetricDimensionGroup' {group'} -> group') (\s@PerformanceInsightsMetricDimensionGroup' {} a -> s {group' = a} :: PerformanceInsightsMetricDimensionGroup)

-- | The maximum number of items to fetch for this dimension group.
performanceInsightsMetricDimensionGroup_limit :: Lens.Lens' PerformanceInsightsMetricDimensionGroup (Prelude.Maybe Prelude.Natural)
performanceInsightsMetricDimensionGroup_limit = Lens.lens (\PerformanceInsightsMetricDimensionGroup' {limit} -> limit) (\s@PerformanceInsightsMetricDimensionGroup' {} a -> s {limit = a} :: PerformanceInsightsMetricDimensionGroup)

instance
  Data.FromJSON
    PerformanceInsightsMetricDimensionGroup
  where
  parseJSON =
    Data.withObject
      "PerformanceInsightsMetricDimensionGroup"
      ( \x ->
          PerformanceInsightsMetricDimensionGroup'
            Prelude.<$> (x Data..:? "Dimensions" Data..!= Prelude.mempty)
            Prelude.<*> (x Data..:? "Group")
            Prelude.<*> (x Data..:? "Limit")
      )

instance
  Prelude.Hashable
    PerformanceInsightsMetricDimensionGroup
  where
  hashWithSalt
    _salt
    PerformanceInsightsMetricDimensionGroup' {..} =
      _salt
        `Prelude.hashWithSalt` dimensions
        `Prelude.hashWithSalt` group'
        `Prelude.hashWithSalt` limit

instance
  Prelude.NFData
    PerformanceInsightsMetricDimensionGroup
  where
  rnf PerformanceInsightsMetricDimensionGroup' {..} =
    Prelude.rnf dimensions
      `Prelude.seq` Prelude.rnf group'
      `Prelude.seq` Prelude.rnf limit
