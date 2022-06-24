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
-- Module      : Amazonka.CostExplorer.Types.CurrentInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CostExplorer.Types.CurrentInstance where

import qualified Amazonka.Core as Core
import Amazonka.CostExplorer.Types.ResourceDetails
import Amazonka.CostExplorer.Types.ResourceUtilization
import Amazonka.CostExplorer.Types.TagValues
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Context about the current instance.
--
-- /See:/ 'newCurrentInstance' smart constructor.
data CurrentInstance = CurrentInstance'
  { -- | Resource ID of the current instance.
    resourceId :: Prelude.Maybe Prelude.Text,
    -- | Cost allocation resource tags that are applied to the instance.
    tags :: Prelude.Maybe [TagValues],
    -- | The number of hours during the lookback period that\'s covered by
    -- Savings Plans.
    savingsPlansCoveredHoursInLookbackPeriod :: Prelude.Maybe Prelude.Text,
    -- | The name that you given an instance. This field shows as blank if you
    -- haven\'t given the instance a name.
    instanceName :: Prelude.Maybe Prelude.Text,
    -- | The number of hours during the lookback period that\'s covered by
    -- reservations.
    reservationCoveredHoursInLookbackPeriod :: Prelude.Maybe Prelude.Text,
    -- | The total number of hours that the instance ran during the lookback
    -- period.
    totalRunningHoursInLookbackPeriod :: Prelude.Maybe Prelude.Text,
    -- | Details about the resource and utilization.
    resourceDetails :: Prelude.Maybe ResourceDetails,
    -- | The currency code that Amazon Web Services used to calculate the costs
    -- for this instance.
    currencyCode :: Prelude.Maybe Prelude.Text,
    -- | Utilization information of the current instance during the lookback
    -- period.
    resourceUtilization :: Prelude.Maybe ResourceUtilization,
    -- | The current On-Demand cost of operating this instance on a monthly
    -- basis.
    monthlyCost :: Prelude.Maybe Prelude.Text,
    -- | The number of hours during the lookback period that\'s billed at
    -- On-Demand rates.
    onDemandHoursInLookbackPeriod :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CurrentInstance' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceId', 'currentInstance_resourceId' - Resource ID of the current instance.
--
-- 'tags', 'currentInstance_tags' - Cost allocation resource tags that are applied to the instance.
--
-- 'savingsPlansCoveredHoursInLookbackPeriod', 'currentInstance_savingsPlansCoveredHoursInLookbackPeriod' - The number of hours during the lookback period that\'s covered by
-- Savings Plans.
--
-- 'instanceName', 'currentInstance_instanceName' - The name that you given an instance. This field shows as blank if you
-- haven\'t given the instance a name.
--
-- 'reservationCoveredHoursInLookbackPeriod', 'currentInstance_reservationCoveredHoursInLookbackPeriod' - The number of hours during the lookback period that\'s covered by
-- reservations.
--
-- 'totalRunningHoursInLookbackPeriod', 'currentInstance_totalRunningHoursInLookbackPeriod' - The total number of hours that the instance ran during the lookback
-- period.
--
-- 'resourceDetails', 'currentInstance_resourceDetails' - Details about the resource and utilization.
--
-- 'currencyCode', 'currentInstance_currencyCode' - The currency code that Amazon Web Services used to calculate the costs
-- for this instance.
--
-- 'resourceUtilization', 'currentInstance_resourceUtilization' - Utilization information of the current instance during the lookback
-- period.
--
-- 'monthlyCost', 'currentInstance_monthlyCost' - The current On-Demand cost of operating this instance on a monthly
-- basis.
--
-- 'onDemandHoursInLookbackPeriod', 'currentInstance_onDemandHoursInLookbackPeriod' - The number of hours during the lookback period that\'s billed at
-- On-Demand rates.
newCurrentInstance ::
  CurrentInstance
newCurrentInstance =
  CurrentInstance'
    { resourceId = Prelude.Nothing,
      tags = Prelude.Nothing,
      savingsPlansCoveredHoursInLookbackPeriod =
        Prelude.Nothing,
      instanceName = Prelude.Nothing,
      reservationCoveredHoursInLookbackPeriod =
        Prelude.Nothing,
      totalRunningHoursInLookbackPeriod = Prelude.Nothing,
      resourceDetails = Prelude.Nothing,
      currencyCode = Prelude.Nothing,
      resourceUtilization = Prelude.Nothing,
      monthlyCost = Prelude.Nothing,
      onDemandHoursInLookbackPeriod = Prelude.Nothing
    }

-- | Resource ID of the current instance.
currentInstance_resourceId :: Lens.Lens' CurrentInstance (Prelude.Maybe Prelude.Text)
currentInstance_resourceId = Lens.lens (\CurrentInstance' {resourceId} -> resourceId) (\s@CurrentInstance' {} a -> s {resourceId = a} :: CurrentInstance)

-- | Cost allocation resource tags that are applied to the instance.
currentInstance_tags :: Lens.Lens' CurrentInstance (Prelude.Maybe [TagValues])
currentInstance_tags = Lens.lens (\CurrentInstance' {tags} -> tags) (\s@CurrentInstance' {} a -> s {tags = a} :: CurrentInstance) Prelude.. Lens.mapping Lens.coerced

-- | The number of hours during the lookback period that\'s covered by
-- Savings Plans.
currentInstance_savingsPlansCoveredHoursInLookbackPeriod :: Lens.Lens' CurrentInstance (Prelude.Maybe Prelude.Text)
currentInstance_savingsPlansCoveredHoursInLookbackPeriod = Lens.lens (\CurrentInstance' {savingsPlansCoveredHoursInLookbackPeriod} -> savingsPlansCoveredHoursInLookbackPeriod) (\s@CurrentInstance' {} a -> s {savingsPlansCoveredHoursInLookbackPeriod = a} :: CurrentInstance)

-- | The name that you given an instance. This field shows as blank if you
-- haven\'t given the instance a name.
currentInstance_instanceName :: Lens.Lens' CurrentInstance (Prelude.Maybe Prelude.Text)
currentInstance_instanceName = Lens.lens (\CurrentInstance' {instanceName} -> instanceName) (\s@CurrentInstance' {} a -> s {instanceName = a} :: CurrentInstance)

-- | The number of hours during the lookback period that\'s covered by
-- reservations.
currentInstance_reservationCoveredHoursInLookbackPeriod :: Lens.Lens' CurrentInstance (Prelude.Maybe Prelude.Text)
currentInstance_reservationCoveredHoursInLookbackPeriod = Lens.lens (\CurrentInstance' {reservationCoveredHoursInLookbackPeriod} -> reservationCoveredHoursInLookbackPeriod) (\s@CurrentInstance' {} a -> s {reservationCoveredHoursInLookbackPeriod = a} :: CurrentInstance)

-- | The total number of hours that the instance ran during the lookback
-- period.
currentInstance_totalRunningHoursInLookbackPeriod :: Lens.Lens' CurrentInstance (Prelude.Maybe Prelude.Text)
currentInstance_totalRunningHoursInLookbackPeriod = Lens.lens (\CurrentInstance' {totalRunningHoursInLookbackPeriod} -> totalRunningHoursInLookbackPeriod) (\s@CurrentInstance' {} a -> s {totalRunningHoursInLookbackPeriod = a} :: CurrentInstance)

-- | Details about the resource and utilization.
currentInstance_resourceDetails :: Lens.Lens' CurrentInstance (Prelude.Maybe ResourceDetails)
currentInstance_resourceDetails = Lens.lens (\CurrentInstance' {resourceDetails} -> resourceDetails) (\s@CurrentInstance' {} a -> s {resourceDetails = a} :: CurrentInstance)

-- | The currency code that Amazon Web Services used to calculate the costs
-- for this instance.
currentInstance_currencyCode :: Lens.Lens' CurrentInstance (Prelude.Maybe Prelude.Text)
currentInstance_currencyCode = Lens.lens (\CurrentInstance' {currencyCode} -> currencyCode) (\s@CurrentInstance' {} a -> s {currencyCode = a} :: CurrentInstance)

-- | Utilization information of the current instance during the lookback
-- period.
currentInstance_resourceUtilization :: Lens.Lens' CurrentInstance (Prelude.Maybe ResourceUtilization)
currentInstance_resourceUtilization = Lens.lens (\CurrentInstance' {resourceUtilization} -> resourceUtilization) (\s@CurrentInstance' {} a -> s {resourceUtilization = a} :: CurrentInstance)

-- | The current On-Demand cost of operating this instance on a monthly
-- basis.
currentInstance_monthlyCost :: Lens.Lens' CurrentInstance (Prelude.Maybe Prelude.Text)
currentInstance_monthlyCost = Lens.lens (\CurrentInstance' {monthlyCost} -> monthlyCost) (\s@CurrentInstance' {} a -> s {monthlyCost = a} :: CurrentInstance)

-- | The number of hours during the lookback period that\'s billed at
-- On-Demand rates.
currentInstance_onDemandHoursInLookbackPeriod :: Lens.Lens' CurrentInstance (Prelude.Maybe Prelude.Text)
currentInstance_onDemandHoursInLookbackPeriod = Lens.lens (\CurrentInstance' {onDemandHoursInLookbackPeriod} -> onDemandHoursInLookbackPeriod) (\s@CurrentInstance' {} a -> s {onDemandHoursInLookbackPeriod = a} :: CurrentInstance)

instance Core.FromJSON CurrentInstance where
  parseJSON =
    Core.withObject
      "CurrentInstance"
      ( \x ->
          CurrentInstance'
            Prelude.<$> (x Core..:? "ResourceId")
            Prelude.<*> (x Core..:? "Tags" Core..!= Prelude.mempty)
            Prelude.<*> ( x
                            Core..:? "SavingsPlansCoveredHoursInLookbackPeriod"
                        )
            Prelude.<*> (x Core..:? "InstanceName")
            Prelude.<*> ( x
                            Core..:? "ReservationCoveredHoursInLookbackPeriod"
                        )
            Prelude.<*> (x Core..:? "TotalRunningHoursInLookbackPeriod")
            Prelude.<*> (x Core..:? "ResourceDetails")
            Prelude.<*> (x Core..:? "CurrencyCode")
            Prelude.<*> (x Core..:? "ResourceUtilization")
            Prelude.<*> (x Core..:? "MonthlyCost")
            Prelude.<*> (x Core..:? "OnDemandHoursInLookbackPeriod")
      )

instance Prelude.Hashable CurrentInstance where
  hashWithSalt _salt CurrentInstance' {..} =
    _salt `Prelude.hashWithSalt` resourceId
      `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` savingsPlansCoveredHoursInLookbackPeriod
      `Prelude.hashWithSalt` instanceName
      `Prelude.hashWithSalt` reservationCoveredHoursInLookbackPeriod
      `Prelude.hashWithSalt` totalRunningHoursInLookbackPeriod
      `Prelude.hashWithSalt` resourceDetails
      `Prelude.hashWithSalt` currencyCode
      `Prelude.hashWithSalt` resourceUtilization
      `Prelude.hashWithSalt` monthlyCost
      `Prelude.hashWithSalt` onDemandHoursInLookbackPeriod

instance Prelude.NFData CurrentInstance where
  rnf CurrentInstance' {..} =
    Prelude.rnf resourceId
      `Prelude.seq` Prelude.rnf tags
      `Prelude.seq` Prelude.rnf savingsPlansCoveredHoursInLookbackPeriod
      `Prelude.seq` Prelude.rnf instanceName
      `Prelude.seq` Prelude.rnf reservationCoveredHoursInLookbackPeriod
      `Prelude.seq` Prelude.rnf totalRunningHoursInLookbackPeriod
      `Prelude.seq` Prelude.rnf resourceDetails
      `Prelude.seq` Prelude.rnf currencyCode
      `Prelude.seq` Prelude.rnf resourceUtilization
      `Prelude.seq` Prelude.rnf monthlyCost
      `Prelude.seq` Prelude.rnf onDemandHoursInLookbackPeriod
