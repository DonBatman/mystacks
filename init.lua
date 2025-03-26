local stack = tonumber(core.settings:get("mystacks.stack_size")) or 250

local stackitems = {"default:cobble",
					"default:desert_cobble",
					"default:dirt",
					"default:sand",
					"default:silver_sand",
					"default:desert_sand",
					"default:stone",
					"default:desert_sandstone",
					"default:desert_stone",
					"default:sandstone",
					"default:sandstone",
					"default:silver_sandstone",
					"default:stonebrick",
					"default:desert_stonebrick",
					"default:sandstonebrick",
					"default:desert_sandstone_brick",
					"default:silver_sandstone_brick"
					}

if minetest.get_modpath("mystreets") then
	table.insert(stackitems,"mystreets:asphalt")
	table.insert(stackitems,"mystreets:asphalt_center_dashed")
	table.insert(stackitems,"mystreets:asphalt_center_solid")
	table.insert(stackitems,"mystreets:asphalt_center_solid_dashed")
	table.insert(stackitems,"mystreets:asphalt_center_solid_double")
	table.insert(stackitems,"mystreets:asphalt_side_solid")
end
if minetest.get_modpath("myconcrete") then
	table.insert(stackitems,"myconcrete:concrete")
	table.insert(stackitems,"myconcrete:sidewalk")
end


for i, v in ipairs(stackitems) do
	item = stackitems[i]
minetest.override_item(item,{
	stack_max = stack,
})
end













