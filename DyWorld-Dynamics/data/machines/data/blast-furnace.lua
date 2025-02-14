


data:extend(
{
  {
    type = "assembling-machine",
    name = "blast-furnace",
    icons = 
	{
	  {
		icon = DyDs_path_icon.."blast-furnace.png",
	  },
	},
	icon_size = 64,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "blast-furnace"},
	collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    max_health = 1000,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    fast_replaceable_group = "crafting",
    next_upgrade = nil,
    crafting_categories = {"blast-furnace"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "1kW",
      emissions_per_minute = Dy_Sett.Difficulty == "Easy" and 20 or Dy_Sett.Difficulty == "Normal" and 60 or Dy_Sett.Difficulty == "Hard" and 180 or 5,
    },
    energy_usage = "500kW",
    ingredient_count = 25,
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fluid_boxes =
	{
      {
        production_type = "output",
        --pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {-3, 1} }}
      }, 
	  {
        production_type = "output",
        --pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {-3, -1} }}
      }, 
      {
        production_type = "output",
        --pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {3,1} }}
      }, 
	  {
        production_type = "output",
        --pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {3,-1} }}
      }, 
      {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, -3} }}
      }, 
	  {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, -3} }}
      }, 
      {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1,3} }}
      }, 
	  {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1,3} }}
      },
	},
    module_specification =
    {
      module_slots = 5
    },
    allowed_effects = {"consumption", "speed", "pollution"},
    animation =
    {
      filename = DyDs_path_entity.."blast-furnace.png",
      priority = "medium",
      width = 212,
      height = 180,
      line_length = 5,
      frame_count = 16,
	  shift = {0.8, 0.18},
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t2-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t2-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  },
  {
    type = "item",
    name = "blast-furnace",
    icons = 
	{
	  {
		icon = DyDs_path_icon.."blast-furnace.png",
	  },
	},
	icon_size = 64,
    flags = {},
    subgroup = DyDs.."assemblers",
    order = "blast-furnace",
    place_result = "blast-furnace",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "blast-furnace",
	category = "assembling-tier-2",
    normal =
    {
      ingredients =
      {
        {type = "item", name = "control-board-1", amount = 3},
        {type = "item", name = "iron-plate", amount = 8},
        {type = "item", name = "bronze-plate", amount = 2},
      },
      result = "blast-furnace",
	  enabled = false,
	  energy_required = 5,
    },
  },
})