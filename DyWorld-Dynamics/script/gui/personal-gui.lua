

local function Progress_Surival_Style_Check(VAR)
	local Percent = VAR * 100
	if Percent >= 90 then return "dy-bar-1"
	elseif Percent >= 80 then return "dy-bar-2"
	elseif Percent >= 70 then return "dy-bar-3"
	elseif Percent >= 60 then return "dy-bar-4"
	elseif Percent >= 50 then return "dy-bar-5"
	elseif Percent >= 40 then return "dy-bar-6"
	elseif Percent >= 30 then return "dy-bar-7"
	elseif Percent >= 20 then return "dy-bar-8"
	elseif Percent >= 10 then return "dy-bar-9"
	elseif Percent < 10 then return "dy-bar-10"
	else return "dy-bar-10"
	end
end

local function Time_Surival_Check(id, VAR, mult)
	if VAR == "food" then
		local rate = Round((global.dyworld.players[id].food_rate * mult), 2)
		local capacity = global.dyworld.players[id].food
		local total = capacity / rate
		local seconds_start = math.floor(total)
		local minutes_start = math.floor(seconds_start/60)
		local hours = math.floor(minutes_start/60)
		local minutes = (minutes_start-(hours*60))
		local seconds = (seconds_start-(minutes_start*60))
		return (hours..":"..minutes..":"..seconds)
	elseif VAR == "water" then
		local rate = Round((global.dyworld.players[id].water_rate * mult), 2)
		local capacity = global.dyworld.players[id].water
		local total = capacity / rate
		local seconds_start = math.floor(total)
		local minutes_start = math.floor(seconds_start/60)
		local hours = math.floor(minutes_start/60)
		local minutes = (minutes_start-(hours*60))
		local seconds = (seconds_start-(minutes_start*60))
		return (hours..":"..minutes..":"..seconds)
	end
end

function Close_Personal_GUI(player, id)
	if player.gui.left.DyDs_Personal_GUI then
		player.gui.left.DyDs_Personal_GUI.destroy()
	end
end

local function Check_State(id, IMPLANT, Tier)
    local GloPla = global.dyworld.players[id].implants
    GloImplant = IMPLANT.."-"..Tier
    if GloPla[GloImplant].enabled == true then
        if Tier == 1 then return "[color=green]Mk I[/color]"
        elseif Tier == 2 then return "[color=green]Mk II[/color]"
        elseif Tier == 3 then return "[color=green]Mk III[/color]"
        elseif Tier == 4 then return "[color=green]Mk IV[/color]"
        elseif Tier == 5 then return "[color=green]Mk V[/color]"
        end
    else
        if Tier == 1 then return "[color=red]Mk I[/color]"
        elseif Tier == 2 then return "[color=red]Mk II[/color]"
        elseif Tier == 3 then return "[color=red]Mk III[/color]"
        elseif Tier == 4 then return "[color=red]Mk IV[/color]"
        elseif Tier == 5 then return "[color=red]Mk V[/color]"
        end
    end
end

local function Check_Implant_State(id, IMPLANT)
    local GloPla = global.dyworld.players[id].implants
    local GloPla_1 = Check_State(id, IMPLANT, 1)
    local GloPla_2 = Check_State(id, IMPLANT, 2)
    local GloPla_3 = Check_State(id, IMPLANT, 3)
    local GloPla_4 = Check_State(id, IMPLANT, 4)
    local GloPla_5 = Check_State(id, IMPLANT, 5)
    return GloPla_1..", "..GloPla_2..", "..GloPla_3..", "..GloPla_4..", "..GloPla_5
end

function Personal_GUI(player, id)
	local force = player.force
	local surface = game.players[id].surface.name
	local frame = player.gui.left.add{type = "frame", name = "DyDs_Personal_GUI", caption = "Your Body"}
	local frameflow1 = frame.add{type = "flow", name = "flow1", direction = "vertical"}
    local GloPla = global.dyworld.players[id].implants
    --if not global.dyworld.players[id].personal_gui_loc then global.dyworld.players[id].personal_gui_loc = {X = 0, Y = 0} end
    --player.gui.screen.DyDs_Personal_GUI.location.x = global.dyworld.players[id].personal_gui_loc.X
    --player.gui.screen.DyDs_Personal_GUI.location.y = global.dyworld.players[id].personal_gui_loc.Y

	if settings.global["DyWorld_Food_Difficulty"].value ~= "Off" then
        local Mult = settings.global["DyWorld_Food_Difficulty"].value == "Easy" and 0.5 or settings.global["DyWorld_Food_Difficulty"].value == "Normal" and 1 or settings.global["DyWorld_Food_Difficulty"].value == "Hard" and 2 or settings.global["DyWorld_Food_Difficulty"].value == "Insane" and 5 or 1

		--frameflow1.add{type = "label", caption = "Water:"}
		frameflow1.add{type = "progressbar", value = (global.dyworld.players[id].water/global.dyworld.players[id].water_max), tooltip = "Water: [color=blue]"..Round(global.dyworld.players[id].water, 2).."[/color]\nMax Water: [color=blue]"..global.dyworld.players[id].water_max.."[/color]\nUse Rate: [color=blue]"..Round((global.dyworld.players[id].water_rate * Mult), 2).."[/color] per second\nTime Left: [color=blue]"..Time_Surival_Check(id, "water", Mult).."[/color]", style = Progress_Surival_Style_Check((global.dyworld.players[id].water/global.dyworld.players[id].water_max)), caption = GloPla["food-implant"].enabled and "   [color=red]Water (Auto)[/color]" or "         [color=red]Water[/color]"}

		--frameflow1.add{type = "label", caption = "Food:"}
		frameflow1.add{type = "progressbar", value = (global.dyworld.players[id].food/global.dyworld.players[id].food_max), tooltip = "Food: [color=blue]"..Round(global.dyworld.players[id].food, 2).."[/color]\nMax Food: [color=blue]"..global.dyworld.players[id].food_max.."[/color]\nUse Rate: [color=blue]"..Round((global.dyworld.players[id].food_rate * Mult), 2).."[/color] per second\nTime Left: [color=blue]"..Time_Surival_Check(id, "food", Mult).."[/color]", style = Progress_Surival_Style_Check((global.dyworld.players[id].food/global.dyworld.players[id].food_max)), caption = GloPla["food-implant"].enabled and "   [color=red]Food (Auto)[/color]" or "         [color=red]Food[/color]"}
        
    else
        frameflow1.add{type = "label", caption = "Food and Water Disabled"}
	end
    
    if game.players[id].character then
        frameflow1.add{type = "progressbar", value = (game.players[id].character.get_health_ratio()), style = Progress_Surival_Style_Check(game.players[id].character.get_health_ratio()), caption = GloPla["health-implant"].enabled and "   [color=red]Health (Auto)[/color]" or "         [color=red]Health[/color]"}
    end

    -- Temperature and Radiation WIP
    --frameflow1.add{type = "progressbar", value = (1), style = Progress_Surival_Style_Check(1), caption = "         [color=red]WIP[/color]"}
    --frameflow1.add{type = "progressbar", value = (1), style = Progress_Surival_Style_Check(1), caption = "         [color=red]WIP[/color]"}
    frameflow1.add{type = "label", caption = "[color=yellow]Implants[/color]", tooltip = "Food Reduction: \n"..Check_Implant_State(id, "usage-reduction").."\n\nSpeed Implant: \n"..Check_Implant_State(id, "speed-implant").."\n\nDeath Implant: \n"..Check_Implant_State(id, "death-implant")}
end

