require "data/prefix"

Data_Table_Item_Group = {
	{
		Name = "logistics",
		Type = "main",
		Icon = "logistics.png"
	},
	{
		Name = "chest-storage",
		Type = "sub",
		Main = "logistics"
	},
	{
		Name = "roboport-construction",
		Type = "sub",
		Main = "logistics"
	},
	{
		Name = "roboport-logistic",
		Type = "sub",
		Main = "logistics"
	},
	{
		Name = "robot-construction",
		Type = "sub",
		Main = "logistics"
	},
	{
		Name = "robot-logistic",
		Type = "sub",
		Main = "logistics"
	},
	{
		Name = "transport-belt",
		Type = "sub",
		Main = "logistics"
	},
	{
		Name = "transport-splitter",
		Type = "sub",
		Main = "logistics"
	},
	{
		Name = "transport-underground",
		Type = "sub",
		Main = "logistics"
	},
	{
		Name = "inserter-basic",
		Type = "sub",
		Main = "logistics"
	},
	{
		Name = "inserter-long",
		Type = "sub",
		Main = "logistics"
	},
	{
		Name = "inserter-filter",
		Type = "sub",
		Main = "logistics"
	},
	{
		Name = "inserter-stack",
		Type = "sub",
		Main = "logistics"
	},
	{
		Name = "inserter-stack-filter",
		Type = "sub",
		Main = "logistics"
	},
	{
		Name = "inserter-super",
		Type = "sub",
		Main = "logistics"
	},
	{
		Name = "railway",
		Type = "sub",
		Main = "logistics"
	},
	{
		Name = "pipe-normal",
		Type = "sub",
		Main = "logistics"
	},
	{
		Name = "pipe-underground",
		Type = "sub",
		Main = "logistics"
	},
	{
		Name = "tank-storage",
		Type = "sub",
		Main = "logistics"
	},
	{
		Name = "pump-pipe",
		Type = "sub",
		Main = "logistics"
	},
	{
		Name = "pump-offshore",
		Type = "sub",
		Main = "logistics"
	},
}

function DyWorld_Item_Main_Group(NAME, ICON)
  local result =
  {
    type = "item-group",
    name = dy..NAME,
    icon = dyworld_path_item_group..ICON,
    icon_size = 64,
    order = "z-"..dy..NAME,
  }
  return result
end

function DyWorld_Item_Sub_Group(NAME, MAIN)
  local result =
  {
    type = "item-subgroup",
    name = dy..NAME,
    group = dy..MAIN,
    order = dy..NAME
  }
  return result
end

for k,v in pairs(Data_Table_Item_Group) do
	if v.Type == "main" then
		data:extend(
			{
				DyWorld_Item_Main_Group(v.Name, v.Icon)
			})
	elseif v.Type == "sub" then
		data:extend(
			{
				DyWorld_Item_Sub_Group(v.Name, v.Main)
			})
	end
end