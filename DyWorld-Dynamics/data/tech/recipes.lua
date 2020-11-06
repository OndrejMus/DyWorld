



local Recipes = {
	["bloomery"] = {"copper-processing", "iron-processing", "tin-processing"},
	["centrifuge"] = {"copper-processing", "iron-processing", "tin-processing"},
	["bronze-pump"] = {"copper-processing", "iron-processing", "tin-processing"},
	["water-centrifuge"] = {"copper-processing", "iron-processing", "tin-processing"},
	["canister-empty"] = {"copper-processing", "iron-processing", "tin-processing"},
	["canister-oxygen"] = {"copper-processing", "iron-processing", "tin-processing"},
	["ore-purify-titanium"] = {"titanium-processing"},
	["titanium-ore"] = {"titanium-processing"},
	["ore-purify-aluminium"] = {"aluminium-processing"},
	["aluminium-ore"] = {"aluminium-processing"},
	["ore-purify-magnesium"] = {"magnesium-processing"},
	["aluminium-ore"] = {"magnesium-processing"},
	["cast-titanium-3a"] = {"titanium-processing"},
	["cast-titanium-3b"] = {"titanium-processing"},
	["cast-aluminium-3a"] = {"aluminium-processing"},
	["cast-aluminium-3b"] = {"aluminium-processing"},
	["cast-magnesium-3a"] = {"magnesium-processing"},
	["cast-magnesium-3b"] = {"magnesium-processing"},
	["canister-nitrogen"] = {"copper-processing"},
	["canister-water"] = {"iron-processing"},
	["canister-hydrogen"] = {"tin-processing"},
	["ore-purify-copper"] = {"copper-processing"},
	["ore-purify-iron"] = {"iron-processing"},
	["ore-purify-tin"] = {"tin-processing"},
	["cast-copper-2"] = {"copper-processing"},
	["cast-iron-2"] = {"iron-processing"},
	["cast-tin-2"] = {"tin-processing"},
	["cast-bronze-2"] = {"bronze-processing"},
	["cast-copper-3a"] = {"advanced-copper-processing"},
	["cast-iron-3a"] = {"advanced-iron-processing"},
	["cast-tin-3a"] = {"advanced-tin-processing"},
	["cast-copper-3b"] = {"advanced-copper-processing"},
	["cast-iron-3b"] = {"advanced-iron-processing"},
	["cast-tin-3b"] = {"advanced-tin-processing"},
	["cast-steel-2"] = {"steel-processing"},
	["cast-steel-3a"] = {"advanced-steel-processing"},
	["cast-steel-3b"] = {"advanced-steel-processing"},
	
	["blast-furnace"] = {"metallurgy-1"},
	["caster"] = {"metallurgy-1"},
	["ilmenite"] = {"metallurgy-2"},
	["biotite"] = {"metallurgy-2"},
	["ore-purify-copper-2"] = {"metallurgy-3"},
	["ore-purify-iron-2"] = {"metallurgy-3"},
	["ore-purify-tin-2"] = {"metallurgy-3"},
	["ore-purify-magnesium-2"] = {"metallurgy-4"},
	["ore-purify-titanium-2"] = {"metallurgy-4"},
	["ore-purify-aluminium-2"] = {"metallurgy-4"},
	["ore-purify-copper-3"] = {"metallurgy-6"},
	["ore-purify-iron-3"] = {"metallurgy-6"},
	["ore-purify-tin-3"] = {"metallurgy-6"},
	["ore-purify-magnesium-3"] = {"metallurgy-7"},
	["ore-purify-titanium-3"] = {"metallurgy-7"},
	["ore-purify-aluminium-3"] = {"metallurgy-7"},
	
	["slag-processing"] = {"slag-processing"},
	
	["asteroid-miner-tin"] = {"basic-asteroid-mining"},
	["asteroid-miner-iron"] = {"basic-asteroid-mining"},
	["asteroid-miner-copper"] = {"basic-asteroid-mining"},
	["asteroid-miner-stone"] = {"basic-asteroid-mining"},
	["asteroid-miner-titanium"] = {"basic-asteroid-mining"},
	["asteroid-miner-random"] = {"basic-asteroid-mining"},
	["asteroid-miner-coal-1"] = {"basic-asteroid-mining"},
	["asteroid-miner-coal-2"] = {"basic-asteroid-mining"},
	["asteroid-miner-coal-3"] = {"basic-asteroid-mining"},
	
	["grinder"] = {"automation-1"},
	["quartz"] = {"automation-1"},
	
	["small-lamp"] = {"optics"},
	["night-vision-equipment"] = {"optics"},
	
	["transport-belt-2"] = {"logistics-1"},
	["underground-belt-2"] = {"logistics-1"},
	["splitter-2"] = {"filters-1"},
	["loader-2"] = {"filters-1"},
	["transport-belt-3"] = {"logistics-3"},
	["underground-belt-3"] = {"logistics-3"},
	["splitter-3"] = {"logistics-4"},
	["loader-3"] = {"logistics-4"},
	["transport-belt-4"] = {"logistics-5"},
	["underground-belt-4"] = {"logistics-5"},
	["splitter-4"] = {"logistics-6"},
	["loader-4"] = {"logistics-6"},
	["transport-belt-5"] = {"logistics-7"},
	["underground-belt-5"] = {"logistics-7"},
	["splitter-5"] = {"logistics-8"},
	["loader-5"] = {"logistics-8"},
	
	["logistic-chest-storage"] = {"storage-1"},
	["logistic-chest-passive-provider"] = {"storage-1"},
	["logistic-chest-requester"] = {"storage-2"},
	["logistic-chest-active-provider"] = {"storage-3"},
	["logistic-chest-buffer"] = {"storage-3"},
	["storehouse-basic"] = {"storage-3"},
	["construction-robot-1"] = {"storage-3"},
	["logistic-robot-1"] = {"storage-3"},
	["roboport-1"] = {"storage-3"},
	["storehouse-requester"] = {"storage-4"},
	["storehouse-passive-provider"] = {"storage-4"},
	["storehouse-storage"] = {"storage-4"},
	["storehouse-buffer"] = {"storage-5"},
	["storehouse-active-provider"] = {"storage-5"},
	["warehouse-basic"] = {"storage-5"},
	["construction-robot-2"] = {"storage-5"},
	["logistic-robot-2"] = {"storage-5"},
	["roboport-2"] = {"storage-5"},
	["warehouse-storage"] = {"storage-6"},
	["warehouse-requester"] = {"storage-6"},
	["warehouse-passive-provider"] = {"storage-6"},
	["construction-robot-3"] = {"storage-7"},
	["logistic-robot-3"] = {"storage-7"},
	["roboport-3"] = {"storage-7"},
	["warehouse-buffer"] = {"storage-7"},
	["warehouse-active-provider"] = {"storage-7"},
	
	["air-filter"] = {"filters-1"},
	["filter-nitrogen-1"] = {"filters-1"},
	["filter-oxygen-1"] = {"filters-1"},
	["filter-hydrogen-1"] = {"filters-1"},
	["filter-nitrogen-2"] = {"filters-3"},
	["filter-oxygen-2"] = {"filters-3"},
	["filter-hydrogen-2"] = {"filters-3"},
	
	["rocket-silo-1"] = {"space-mining"},
	["rocket-part-1"] = {"space-mining"},
	["satellite"] = {"space-mining"},
	
	["resin"] = {"intermediates-1"},
	["rubber"] = {"intermediates-1"},
	["landfill-1"] = {"intermediates-1"},
	["landfill-2"] = {"intermediates-1"},
	["landfill-3"] = {"intermediates-1"},
	["landfill-4"] = {"intermediates-1"},
	["stone-brick-advanced-1"] = {"intermediates-1"},
	["stone-brick-advanced-2"] = {"intermediates-1"},
	["stone-brick-advanced-3"] = {"intermediates-1"},
	["stone-brick-advanced-4"] = {"intermediates-1"},
	["stone-furnace"] = {"intermediates-1"},
	["glass-1"] = {"intermediates-2"},
	["glass-2"] = {"intermediates-2"},
	["sand-1"] = {"intermediates-2"},
	["sand-2"] = {"intermediates-2"},
	["engine-unit"] = {"intermediates-2"},
	["concrete-powder"] = {"intermediates-2"},
	["concrete"] = {"intermediates-2"},
	["flying-robot-frame"] = {"intermediates-3"},
	["control-board-2"] = {"intermediates-3"},
	["quartz"] = {"intermediates-5"},
	["refined-concrete-powder"] = {"intermediates-5"},
	["refined-concrete"] = {"intermediates-5"},
	
	["plastic-bar"] = {"oil-processing"},
	["chemical-plant"] = {"oil-processing"},
	["oil-processing"] = {"oil-processing"},
	["oil-refinery"] = {"oil-processing"},
	["oil-extractor"] = {"oil-extraction"},
	
	["radar-1"] = {"warfare-1"},
	["762mm-gun"] = {"warfare-1"},
	["basic-762mm-turret"] = {"warfare-1"},
	["762mm-bullet"] = {"warfare-1"},
	["762mm-bullet-mag"] = {"warfare-1"},
	["762mm-bullet-ap"] = {"warfare-2"},
	["advanced-762mm-turret"] = {"warfare-3"},
	["radar-2"] = {"warfare-3"},
	["zaydon-power-armor"] = {"warfare-3"},
	["radar-3"] = {"warfare-5"},
	["radar-4"] = {"warfare-7"},
	
	["train-stop"] = {"railway-1"},
	["rail-1"] = {"railway-1"},
	["locomotive-1"] = {"railway-1"},
	["cargo-wagon-1"] = {"railway-1"},
	["rail-signal"] = {"railway-2"},
	["rail-chain-signal"] = {"railway-2"},
	["rail-2"] = {"railway-3"},
	["rail-3"] = {"railway-5"},
	
	["advanced-power-pole"] = {"power-1"},
	["basic-power-relay"] = {"power-2"},
	["quantum-power-pole"] = {"power-4"},
	["advanced-power-relay"] = {"power-5"},
	["quantum-power-relay"] = {"power-8"},
}


for name, techtable in pairs(Recipes) do
	for _,tech in pairs(techtable) do
		DyWorld_Add_To_Tech(tech, name)
	end
end