

local Data_Table_Item_Group = {
	{
		Name = "inserters",
		Type = "main",
		Icon = "inserters.png"
	},
	{
		Name = "inserter-tier-0",
		Type = "sub",
		Main = "inserters"
	},
	{
		Name = "inserter-tier-1",
		Type = "sub",
		Main = "inserters"
	},
	{
		Name = "inserter-tier-2",
		Type = "sub",
		Main = "inserters"
	},
	{
		Name = "inserter-tier-3",
		Type = "sub",
		Main = "inserters"
	},
	{
		Name = "inserter-tier-4",
		Type = "sub",
		Main = "inserters"
	},
	{
		Name = "inserter-tier-5",
		Type = "sub",
		Main = "inserters"
	},
	{
		Name = "inserter-tier-6",
		Type = "sub",
		Main = "inserters"
	},
	{
		Name = "inserter-tier-7",
		Type = "sub",
		Main = "inserters"
	},
	{
		Name = "inserter-tier-8",
		Type = "sub",
		Main = "inserters"
	},
	{
		Name = "inserter-tier-9",
		Type = "sub",
		Main = "inserters"
	},
}

function DyWorld_Item_Main_Group(NAME, ICON)
  local result =
  {
    type = "item-group",
    name = DyDs..NAME,
    icon = DyDs_path_item_group..ICON,
    icon_size = 64,
    order = "z-"..DyDs..NAME,
  }
  return result
end

function DyWorld_Item_Sub_Group(NAME, MAIN)
  local result =
  {
    type = "item-subgroup",
    name = DyDs..NAME,
    group = DyDs..MAIN,
    order = DyDs..NAME
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