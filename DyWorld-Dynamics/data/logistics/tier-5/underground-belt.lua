

local DyWorld_Prototype_1 = DyDs_CopyPrototype("underground-belt", "express-underground-belt", "underground-belt-5", true)
local DyWorld_Prototype_2 = DyDs_CopyPrototype("item", "express-underground-belt", "underground-belt-5", true)
DyWorld_Prototype_1.speed = (240 / 480)
DyWorld_Prototype_1.belt_animation_set = DyWorld_basic_belt_animation_set(Tier_5)
DyWorld_Prototype_1.max_distance = 50
DyWorld_Prototype_1.icon = nil
DyWorld_Prototype_1.next_upgrade = nil
DyWorld_Prototype_1.fast_replaceable_group = "transport-belt"
DyWorld_Prototype_1.icons = {
	  {
		icon = DyDs_path_icon.."under-icon-base.png",
	  },
	  {
		icon = DyDs_path_icon.."under-icon-mask.png",
		tint = Tier_5,
	  },
	}
DyWorld_Prototype_2.icon = nil
DyWorld_Prototype_2.icons = {
	  {
		icon = DyDs_path_icon.."under-icon-base.png",
	  },
	  {
		icon = DyDs_path_icon.."under-icon-mask.png",
		tint = Tier_5,
	  },
	}
	DyWorld_Prototype_2.stack_size = 200
	DyWorld_Prototype_2.order = "5"
	DyWorld_Prototype_2.subgroup = DyDs.."transport-belt-underground"

data:extend({
  DyWorld_Prototype_1,
  DyWorld_Prototype_2,
  {
    type = "recipe",
    name = "underground-belt-5",
	category = "assembling-tier-5",
    normal =
    {
      ingredients =
      {
        {type = "item", name = "transport-belt-5", amount = 3},
        {type = "item", name = "bronze-gear", amount = 1},
        {type = "item", name = "bronze-plate", amount = 2},
      },
      result = "underground-belt-5",
	  result_count = 2,
	  energy_required = 1,
	  enabled = false,
    },
    expensive =
    {
      ingredients =
      {
        {type = "item", name = "transport-belt-5", amount = 4},
        {type = "item", name = "bronze-gear", amount = 1},
        {type = "item", name = "bronze-plate", amount = 5},
      },
      result = "underground-belt-5",
	  result_count = 1,
	  energy_required = 5,
	  enabled = false,
    },
  },
})