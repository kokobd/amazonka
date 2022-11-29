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
-- Module      : Amazonka.MediaLive.Types.Multiplex
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.Multiplex where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import Amazonka.MediaLive.Types.MultiplexOutputDestination
import Amazonka.MediaLive.Types.MultiplexSettings
import Amazonka.MediaLive.Types.MultiplexState
import qualified Amazonka.Prelude as Prelude

-- | The multiplex object.
--
-- /See:/ 'newMultiplex' smart constructor.
data Multiplex = Multiplex'
  { -- | A collection of key-value pairs.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the multiplex.
    name :: Prelude.Maybe Prelude.Text,
    -- | A list of availability zones for the multiplex.
    availabilityZones :: Prelude.Maybe [Prelude.Text],
    -- | The unique arn of the multiplex.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The current state of the multiplex.
    state :: Prelude.Maybe MultiplexState,
    -- | Configuration for a multiplex event.
    multiplexSettings :: Prelude.Maybe MultiplexSettings,
    -- | The unique id of the multiplex.
    id :: Prelude.Maybe Prelude.Text,
    -- | The number of currently healthy pipelines.
    pipelinesRunningCount :: Prelude.Maybe Prelude.Int,
    -- | A list of the multiplex output destinations.
    destinations :: Prelude.Maybe [MultiplexOutputDestination],
    -- | The number of programs in the multiplex.
    programCount :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Multiplex' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'multiplex_tags' - A collection of key-value pairs.
--
-- 'name', 'multiplex_name' - The name of the multiplex.
--
-- 'availabilityZones', 'multiplex_availabilityZones' - A list of availability zones for the multiplex.
--
-- 'arn', 'multiplex_arn' - The unique arn of the multiplex.
--
-- 'state', 'multiplex_state' - The current state of the multiplex.
--
-- 'multiplexSettings', 'multiplex_multiplexSettings' - Configuration for a multiplex event.
--
-- 'id', 'multiplex_id' - The unique id of the multiplex.
--
-- 'pipelinesRunningCount', 'multiplex_pipelinesRunningCount' - The number of currently healthy pipelines.
--
-- 'destinations', 'multiplex_destinations' - A list of the multiplex output destinations.
--
-- 'programCount', 'multiplex_programCount' - The number of programs in the multiplex.
newMultiplex ::
  Multiplex
newMultiplex =
  Multiplex'
    { tags = Prelude.Nothing,
      name = Prelude.Nothing,
      availabilityZones = Prelude.Nothing,
      arn = Prelude.Nothing,
      state = Prelude.Nothing,
      multiplexSettings = Prelude.Nothing,
      id = Prelude.Nothing,
      pipelinesRunningCount = Prelude.Nothing,
      destinations = Prelude.Nothing,
      programCount = Prelude.Nothing
    }

-- | A collection of key-value pairs.
multiplex_tags :: Lens.Lens' Multiplex (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
multiplex_tags = Lens.lens (\Multiplex' {tags} -> tags) (\s@Multiplex' {} a -> s {tags = a} :: Multiplex) Prelude.. Lens.mapping Lens.coerced

-- | The name of the multiplex.
multiplex_name :: Lens.Lens' Multiplex (Prelude.Maybe Prelude.Text)
multiplex_name = Lens.lens (\Multiplex' {name} -> name) (\s@Multiplex' {} a -> s {name = a} :: Multiplex)

-- | A list of availability zones for the multiplex.
multiplex_availabilityZones :: Lens.Lens' Multiplex (Prelude.Maybe [Prelude.Text])
multiplex_availabilityZones = Lens.lens (\Multiplex' {availabilityZones} -> availabilityZones) (\s@Multiplex' {} a -> s {availabilityZones = a} :: Multiplex) Prelude.. Lens.mapping Lens.coerced

-- | The unique arn of the multiplex.
multiplex_arn :: Lens.Lens' Multiplex (Prelude.Maybe Prelude.Text)
multiplex_arn = Lens.lens (\Multiplex' {arn} -> arn) (\s@Multiplex' {} a -> s {arn = a} :: Multiplex)

-- | The current state of the multiplex.
multiplex_state :: Lens.Lens' Multiplex (Prelude.Maybe MultiplexState)
multiplex_state = Lens.lens (\Multiplex' {state} -> state) (\s@Multiplex' {} a -> s {state = a} :: Multiplex)

-- | Configuration for a multiplex event.
multiplex_multiplexSettings :: Lens.Lens' Multiplex (Prelude.Maybe MultiplexSettings)
multiplex_multiplexSettings = Lens.lens (\Multiplex' {multiplexSettings} -> multiplexSettings) (\s@Multiplex' {} a -> s {multiplexSettings = a} :: Multiplex)

-- | The unique id of the multiplex.
multiplex_id :: Lens.Lens' Multiplex (Prelude.Maybe Prelude.Text)
multiplex_id = Lens.lens (\Multiplex' {id} -> id) (\s@Multiplex' {} a -> s {id = a} :: Multiplex)

-- | The number of currently healthy pipelines.
multiplex_pipelinesRunningCount :: Lens.Lens' Multiplex (Prelude.Maybe Prelude.Int)
multiplex_pipelinesRunningCount = Lens.lens (\Multiplex' {pipelinesRunningCount} -> pipelinesRunningCount) (\s@Multiplex' {} a -> s {pipelinesRunningCount = a} :: Multiplex)

-- | A list of the multiplex output destinations.
multiplex_destinations :: Lens.Lens' Multiplex (Prelude.Maybe [MultiplexOutputDestination])
multiplex_destinations = Lens.lens (\Multiplex' {destinations} -> destinations) (\s@Multiplex' {} a -> s {destinations = a} :: Multiplex) Prelude.. Lens.mapping Lens.coerced

-- | The number of programs in the multiplex.
multiplex_programCount :: Lens.Lens' Multiplex (Prelude.Maybe Prelude.Int)
multiplex_programCount = Lens.lens (\Multiplex' {programCount} -> programCount) (\s@Multiplex' {} a -> s {programCount = a} :: Multiplex)

instance Core.FromJSON Multiplex where
  parseJSON =
    Core.withObject
      "Multiplex"
      ( \x ->
          Multiplex'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> ( x Core..:? "availabilityZones"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "state")
            Prelude.<*> (x Core..:? "multiplexSettings")
            Prelude.<*> (x Core..:? "id")
            Prelude.<*> (x Core..:? "pipelinesRunningCount")
            Prelude.<*> (x Core..:? "destinations" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "programCount")
      )

instance Prelude.Hashable Multiplex where
  hashWithSalt _salt Multiplex' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` availabilityZones
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` multiplexSettings
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` pipelinesRunningCount
      `Prelude.hashWithSalt` destinations
      `Prelude.hashWithSalt` programCount

instance Prelude.NFData Multiplex where
  rnf Multiplex' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf availabilityZones
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf multiplexSettings
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf pipelinesRunningCount
      `Prelude.seq` Prelude.rnf destinations
      `Prelude.seq` Prelude.rnf programCount
