
-----Terra Mattock-----
minetest.register_tool("alchemtinker:terra_mattock", {
	description = "Terra Mattock",
	inventory_image = "tinker_terra_mattock.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			cracky={times={[1]=2.0, [2]=1.0, [3]=0.5}, uses=20, maxlevel=3},
			crumbly={times={[1]=1.20, [2]=0.60, [3]=0.30}, uses=20, maxlevel=3},
			snappy={times={[1]=2.0, [2]=1.0, [3]=0.5}, uses=20, maxlevel=3},
			choppy={times={[1]=2.20, [2]=1.00, [3]=0.60}, uses=20, maxlevel=3},
		},
	},
})

minetest.register_craft({
	output = "alchemtinker:terra_mattock",
	recipe = {
		{"alchemtinker:terra_essence", "alchemtinker:terra_essence", "alchemtinker:terra_essence"},
		{"", "alchemtinker:terra_essence", "alchemtinker:terra_essence"},
		{"", "alchemtinker:terra_essence", ""}
	}
})

-----Aqua Plogh----- This item uses an unusual API.
farming.register_hoe("alchemtinker:aqua_plogh", {
	description = "Aqua Plogh",	-- Description for tooltip
	inventory_image = "tinker_aqua_plogh.png",	-- Image to be used as wield- and inventory image
	max_uses = 350,	-- Uses until destroyed
	recipe = {	-- Craft recipe
		{"tinkerardcraft:aqua_essence", "tinkerardcraft:aqua_essence"},
		{"", "tinkerardcraft:aqua_essence"},
		{"", "tinkerardcraft:aqua_essence"},
	}
})

minetest.register_craft({
	output = "alchemtinker:aqua_plogh",
	recipe = {
		{"alchemtinker:aqua_essence", "alchemtinker:aqua_essence"},
		{"", "alchemtinker:aqua_essence"},
		{"", "alchemtinker:aqua_essence"}
	}
})

-----Ignus Sword-----
minetest.register_tool("alchemtinker:ignus_rapier", {
    description = "Ignus Rapier",
    inventory_image = "tinker_ignus_rapier.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.00, [3]=0.35}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	}
})

minetest.register_craft({
	output = "alchemtinker:ignus_rapier",
	recipe = {
		{"alchemtinker:ignus_essence", "", ""},
		{"", "alchemtinker:ignus_essence", ""},
		{"", "", "alchemtinker:ignus_essence"}
	}
})
