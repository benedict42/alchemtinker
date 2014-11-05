--Alchemical Tinkerer Mod
--By Benedict42

--[[ Farming API is used here.
{
	description = "",	-- Description of seed item
	inventory_image = "unknown_item.png",	-- Image to be used as seed's wield- and inventory image
	steps = 8,	-- How many steps the plant has to grow, until it can be harvested
	^ Always provide a plant texture for ech step, format: modname_plantname_i.png (i = stepnumber)
	minlight = 13, -- Minimum light to grow
	maxlight = LIGHT_MAX -- Maximum light to grow
}
--]]


farming.register_plant("alchemtinker:terra_plant", {
	description = "Terra Essence Beans",
	inventory_image = "tinker_terra_beans.png",
	steps = 5,
	minlight = 13,
	maxlight = LIGHT_MAX,
	fertility = {"grassland", "desert"}
})

minetest.register_craftitem("alchemtinker:terra_plant", {
	description = "Terra Essence Shard",
	inventory_image = "tinker_terra_shard.png",
})

minetest.register_craft({
	output = "alchemtinker:terra_essence",
	recipe = {
		{"alchemtinker:terra_plant", "alchemtinker:terra_plant", "alchemtinker:terra_plant"},
		{"alchemtinker:terra_plant", "alchemtinker:terra_plant", "alchemtinker:terra_plant"},
		{"alchemtinker:terra_plant", "alchemtinker:terra_plant", "alchemtinker:terra_plant"},
	}
})
----------

farming.register_plant("alchemtinker:aqua_plant", {
	description = "Aqua Essence Beans",
	inventory_image = "tinker_aqua_beans.png",
	steps = 5,
	minlight = 13,
	maxlight = LIGHT_MAX,
	fertility = {"grassland", "desert"}
})

minetest.register_craftitem("alchemtinker:aqua_plant", {
	description = "Aqua Essence Shard",
	inventory_image = "tinker_aqua_shard.png",
})

minetest.register_craft({
	output = "alchemtinker:aqua_essence",
	recipe = {
		{"alchemtinker:aqua_plant", "alchemtinker:aqua_plant", "alchemtinker:aqua_plant"},
		{"alchemtinker:aqua_plant", "alchemtinker:aqua_plant", "alchemtinker:aqua_plant"},
		{"alchemtinker:aqua_plant", "alchemtinker:aqua_plant", "alchemtinker:aqua_plant"},
	}
})

----------

farming.register_plant("alchemtinker:air_plant", {
	description = "Air Essence Beans",
	inventory_image = "tinker_air_beans.png",
	steps = 5,
	minlight = 13,
	maxlight = LIGHT_MAX,
	fertility = {"grassland", "desert"}
})

minetest.register_craftitem("alchemtinker:air_plant", {
	description = "Air Essence Shard",
	inventory_image = "tinker_air_shard.png",
})


minetest.register_craft({
	output = "alchemtinker:air_essence",
	recipe = {
		{"alchemtinker:air_plant", "alchemtinker:air_plant", "alchemtinker:air_plant"},
		{"alchemtinker:air_plant", "alchemtinker:air_plant", "alchemtinker:air_plant"},
		{"alchemtinker:air_plant", "alchemtinker:air_plant", "alchemtinker:air_plant"},
	}
})
----------

farming.register_plant("alchemtinker:ignus_plant", {
	description = "Ignus Essence Beans",
	inventory_image = "tinker_ignus_beans.png",
	steps = 5,
	minlight = 13,
	maxlight = LIGHT_MAX,
	fertility = {"grassland", "desert"}
})

minetest.register_craftitem("alchemtinker:ignus_plant", {
	description = "Ignus Essence Shard",
	inventory_image = "tinker_ignus_shard.png",
})

minetest.register_craft({
	output = "alchemtinker:ignus_essence",
	recipe = {
		{"alchemtinker:ignus_plant", "alchemtinker:ignus_plant", "alchemtinker:ignus_plant"},
		{"alchemtinker:ignus_plant", "alchemtinker:ignus_plant", "alchemtinker:ignus_plant"},
		{"alchemtinker:ignus_plant", "alchemtinker:ignus_plant", "alchemtinker:ignus_plant"},
	}
})

----------

