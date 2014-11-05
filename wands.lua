-----Light Wand-----
minetest.register_node("alchemtinker:light_node", {
	description = "Light of Essences",
	tiles ={"tinker_light_node.png"},
	inventory_image = "tinker_light_node.png",
	drop = "",
	light_source = 14,
	buildable_to = true,
	sunlight_propagates = true,
	groups = {dig_immediate=3, falling_node=1},
	walkable = false,
	paramtype = "light",
	selection_box = {
		type = "fixed",
                -- but how to specify the dimensions for curved and sideways rails?
                fixed = {-1/2, -1/2, -1/2, 1/2, -1/2+1/16, 1/2},
	},
	drawtype = "raillike",
	stack_max = 999,
})

minetest.register_tool("alchemtinker:light_wand", {
    description = "Wand of Essences' Light",
    inventory_image = "tinker_light_wand.png",

	on_use = function(itemstack, user, pointed_thing)
		local pos = user:getpos()
		pos.x = math.floor(pos.x+0.5)
		pos.y = math.floor(pos.y+0.5)
		pos.z = math.floor(pos.z+0.5)

		itemstack:add_wear(262)
		minetest.place_node({x=pos.x, y=pos.y, z=pos.z}, {name="alchemtinker:light_node"})
		return itemstack
	end
})

minetest.register_craft({
	output = "alchemtinker:light_wand",
	recipe = {
		{"alchemtinker:air_essence"},
		{"default:stick"}
	}
})

-----Fire Wand-----
minetest.register_tool("alchemtinker:ignus_wand", {
    description = "Wand of Ignus",
    inventory_image = "tinker_ignus_wand.png",

	on_use = function(itemstack, user, pointed_thing)
		-- Must be pointing to node
		if pointed_thing.type == "node" then
			minetest.place_node(pointed_thing.above, {name="fire:basic_flame"})
			return
		end

		itemstack:add_wear(262)
		return itemstack
	end
})

minetest.register_craft({
	output = "alchemtinker:ignus_wand",
	recipe = {
		{"alchemtinker:ignus_essence"},
		{"default:stick"}
	}
})

minetest.register_craft({
	type = "fuel",
	recipe = "alchemtinker:ignus_wand",
	burntime = 60,
})
