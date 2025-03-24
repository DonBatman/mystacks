local stack = 250

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
					"default:silver_sandstone_brick",
					}
for i, v in ipairs(stackitems) do
	item = stackitems[i]

minetest.override_item(item,{
	stack_max = stack,
})
end

