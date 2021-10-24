



local Recipes = {
	["motor"] = {"intermediates-1"},
	["electric-motor"] = {"intermediates-2"},
}


for name, techtable in pairs(Recipes) do
	for _,tech in pairs(techtable) do
		DyWorld_Add_To_Tech(tech, name)
	end
end

DyW.Tech.Prereq.Override("fuel-processing", {"automation-science-pack"})