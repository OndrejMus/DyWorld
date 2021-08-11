require("data.prefix")
require("data.prefix-data")

debugger = Dy_Sett.Debug
Version_Build = "0.7.100"
Food_Start = debugger and 250000 or settings.global["DyWorld_Food_Difficulty"].value == "Easy" and 25000 or settings.global["DyWorld_Food_Difficulty"].value == "Normal" and 2500 or settings.global["DyWorld_Food_Difficulty"].value == "Hard" and 1600 or settings.global["DyWorld_Food_Difficulty"].value == "Insane" and 800 or 2500
Water_Start = debugger and 500000 or settings.global["DyWorld_Food_Difficulty"].value == "Easy" and 50000 or settings.global["DyWorld_Food_Difficulty"].value == "Normal" and 5000 or settings.global["DyWorld_Food_Difficulty"].value == "Hard" and 2500 or settings.global["DyWorld_Food_Difficulty"].value == "Insane" and 1250 or 5000

-- LuaLib
require "script/lualib/function"
require "script/lualib/debug"
require "script/lualib/player"
require "script/lualib/player-ambush"
require "script/lualib/gui"
require "script/lualib/space-mining"
inspect = require("script/lualib/inspect")
require("script/database/recipes")
require("script/database/inserter")
require("script/database/food")
require("script/database/implants")
require("script/database/dyson")
require("script/database/mining")
require("script/database/objectives-side")
require("script/database/story")
require("script/lualib/inserter")

-- GUI
require "script/gui/main-gui"
require "script/gui/story-gui"
require "script/gui/smn-gui"
require "script/gui/personal-gui"

-- Stats
require "script/stats/functions"
require "script/stats/food"
require "script/stats/implants"

-- Story
require "script/story/story"
require "script/story/functions"
require "script/database/informatron"

-- Event Handlers --
require "script/events/keys"
require "script/events/build-events"
require "script/events/craft-events"
require "script/events/mine-events"
require "script/events/gui-events"
require "script/events/kill-events"
require "script/events/misc-events"
require "script/events/player-events"

require "script/events/on_configuration_changed"
require "script/events/on_init"
require "script/events/on_tick"

-- Config Events
script.on_configuration_changed(Event_on_configuration_changed)
script.on_init(Event_on_init)
script.on_event(defines.events.on_tick, Event_on_tick)

-- Build Events --
script.on_event(defines.events.script_raised_built, Event_script_raised_built)
script.on_event(defines.events.script_raised_revive, Event_script_raised_revive)
script.on_event(defines.events.on_built_entity, Event_on_built_entity)
script.on_event(defines.events.on_robot_built_entity, Event_on_robot_built_entity)
script.on_event(defines.events.on_player_used_capsule, Event_on_player_used_capsule)
script.on_event(defines.events.on_player_built_tile, Event_on_player_built_tile)
script.on_event(defines.events.on_robot_built_tile, Event_on_robot_built_tile)
--script.on_event(defines.events.on_trigger_created_entity, Event_built_test)

-- Mine Events
script.on_event(defines.events.on_player_mined_entity, Event_on_player_mined_entity)
script.on_event(defines.events.on_player_mined_item, Event_on_player_mined_item)
script.on_event(defines.events.on_robot_mined, Event_on_robot_mined)
script.on_event(defines.events.on_robot_mined_entity, Event_on_robot_mined_entity)

-- Craft Events
script.on_event(defines.events.on_player_crafted_item, Event_on_player_crafted_item)

-- Kill Events
script.on_event(defines.events.on_entity_died, Event_on_entity_died)
script.on_event(defines.events.script_raised_destroy, Event_script_raised_destroy)

-- Research Events
script.on_event(defines.events.on_research_finished, Event_on_research_finished)

-- Misc Events
script.on_event(defines.events.on_chunk_generated, Event_on_chunk_generated)
script.on_event(defines.events.on_picked_up_item, Event_on_picked_up_item)
script.on_event(defines.events.on_rocket_launched, Event_on_rocket_launched)
script.on_event(defines.events.on_sector_scanned, Event_on_sector_scanned)
script.on_event(defines.events.on_character_corpse_expired, Event_on_character_corpse_expired)

-- Player Events
script.on_event(defines.events.on_player_changed_force, Event_on_player_changed_force)
script.on_event(defines.events.on_player_created, Event_on_player_created)
script.on_event(defines.events.on_player_respawned, Event_on_player_respawned)
--script.on_event(defines.events.on_player_respawned_event, Event_on_player_respawned_script)
script.on_event(defines.events.on_player_died, Event_on_player_died)
script.on_event(defines.events.on_pre_player_died, Event_on_pre_player_died)
script.on_event(defines.events.on_player_joined_game, Event_on_player_joined_game)
script.on_event(defines.events.on_player_left_game, Event_on_player_left_game)
script.on_event(defines.events.on_pre_player_mined_item, Event_on_pre_player_mined_item)

-- GUI Events
script.on_event(defines.events.on_gui_click, Event_on_gui_click)
script.on_event(defines.events.on_gui_closed, Event_on_gui_closed)
script.on_event(defines.events.on_gui_elem_changed, Event_on_gui_elem_changed)
script.on_event(defines.events.on_gui_location_changed, Event_on_gui_location_changed)
script.on_event(defines.events.on_gui_opened, Event_on_gui_opened)
--script.on_event(defines.events.on_gui_selection_state_changed, Event_on_gui_closed)
--script.on_event(defines.events.on_gui_switch_state_changed, Event_on_gui_closed)
--script.on_event(defines.events.on_gui_text_changed, Event_on_gui_closed)
--script.on_event(defines.events.on_gui_value_changed, Event_on_gui_closed)
script.on_event(defines.events.on_gui_selected_tab_changed, Event_on_gui_selected_tab_changed)



--------------------------------- TEST AREA ------------------------------------------
------------------------------- END TEST AREA ----------------------------------------

--remote calls
remote.add_interface("DyWorld",
{  
	Chart = function(AMOUNT)
		game.forces.player.chart(game.player.surface, {lefttop = {x = -AMOUNT, y = -AMOUNT}, rightbottom = {x = AMOUNT, y = AMOUNT}})
	end,
	
	Regenerate_Ore = function(NAME)
		game.regenerate_entity(NAME)
	end,
	
	Migrate = function()
		Reunlock_Recipes()
	end,
	-- /c remote.call("DyWorld", "Migrate")
	
	Pick_Random_Attack_Location = function()
		Pick_Random_Attack_Location()
	end,
	-- /c remote.call("DyWorld", "Pick_Random_Attack_Location")
	
	Story_Start = function()
		global.dyworld_story = true
	end,
	-- /c remote.call("DyWorld", "Story_Start")
	
	Reset_Dyson_1 = function()
		global.dyworld.game_stats.dyson_1 = {}
	end,
	-- /c remote.call("DyWorld", "Reset_Dyson_1")
	
	Reset_Implants = function()
		Reset_Implants()
	end,
	-- /c remote.call("DyWorld", "Reset_Implants")

	Skip_Phase = function(nmb)
		nmb = nmb or 1
		for i = 1,nmb do
			Phase_Forward()
		end
	end,
	-- /c remote.call("DyWorld", "Skip_Phase", 1)
	
	Reset_Side_Objectives = function()
		Populate_Side_Objectives_Table_Startup(true)
	end,
	-- /c remote.call("DyWorld", "Reset_Side_Objectives")
	
	Pause_Story = function()
		if not global.dyworld.game_stats.story_pause then global.dyworld.game_stats.story_pause = false end
		if global.dyworld.game_stats.story_pause then
			global.dyworld.game_stats.story_pause = false
		else
			global.dyworld.game_stats.story_pause = true
		end
	end,
	-- /c remote.call("DyWorld", "Pause_Story")
	
	allow_aai_crash_sequence = function(data) return {allow = false, weight = 1} end,
	
	informatron_menu = function(data)
		return dyworld_menu(data.player_index)
	end,
	
	informatron_page_content = function(data)
		return dyworld_page_content(data.page_name, data.player_index, data.element)
	end
})

--commands.add_command("dyworld-debug-items", "Debug time :) (only for player 1!)", Debug_Items())