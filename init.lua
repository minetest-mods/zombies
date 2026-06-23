-- A few tables to simplify.
Skins = {
	{"zombie01.png"},
	{"zombie02.png"},
	{"zombie03.png"},
	{"zombie04.png"},
}

Inventory = {
	{name = "default:dirt", chance = 2, min = 3, max = 5},
	{name = "default:apple", chance = 4, min = 2, max = 5},
	{name = "default:clay_lump", chance = 10, min = 1, max = 4},
}

Noise = {
	random = "eating-brains",
	attack = "groan",
}

mobs:register_mob('zombies:1arm', {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 2,
	damage = 2,
	hp_min = 3,
	hp_max = 15,
	armor = 80,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.8, 0.4},
	visual = "mesh",
	mesh = "zombie_one-arm.b3d",
	textures = Skins,
	blood_texture = "default_wood.png",
	makes_footstep_sound = true,
	sounds = Noise,
	walk_velocity = 2,
	run_velocity = 4,
	jump = true,
	view_range = 15,
	drops = Inventory,
	lava_damage = 5,
	light_damage = 0,
	fall_damage = 2,
	animation = {
		speed_normal = 10,
		speed_run = 10,
		punch_speed = 20,
		walk_start = 0,
		walk_end = 20,
		run_start = 0,
		run_end = 20,
		punch_start = 21,
		punch_end = 51,
	},
})

mobs:register_mob('zombies:crawler', {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 2,
	damage = 1,
	hp_min = 1,
	hp_max = 10,
	armor = 80,
	collisionbox = {-0.5, -.5, -0.4, 0.5, 0.2, 0.4},
	visual = "mesh",
	mesh = "zombie_crawler.b3d",
	textures = Skins,
	blood_texture = "default_wood.png",
	makes_footstep_sound = true,
	sounds = Noise,
	walk_velocity = .5,
	run_velocity = 1,
	jump = true,
	view_range = 15,
	drops = Inventory,
	lava_damage = 5,
	light_damage = 0,
	fall_damage = 2,
	animation = {
		speed_normal = 10,
		speed_run = 10,
		punch_speed = 60,
		walk_start = 0,
		walk_end = 40,
		run_start = 0,
		run_end = 40,
		punch_start = 41,
		punch_end = 71,
	},
})

mobs:register_mob('zombies:normal', {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 2,
	damage = 1,
	hp_min = 1,
	hp_max = 10,
	armor = 80,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.8, 0.4},
	visual = "mesh",
	mesh = "zombie_normal.b3d",
	textures = Skins,
	blood_texture = "default_wood.png",
	makes_footstep_sound = true,
	sounds = Noise,
	walk_velocity = 2,
	run_velocity = 4,
	jump = true,
	view_range = 15,
	drops = Inventory,
	lava_damage = 5,
	light_damage = 0,
	fall_damage = 2,
	animation = {
		speed_normal = 20,
		speed_run = 20,
		punch_speed = 20,
		stand_start = 0,
		stand_end = 40,
		walk_start = 41,
		walk_end = 101,
		run_start = 41,
		run_end = 101,
		punch_start = 102,
		punch_end = 142,
	},
})


-- Spawn Functions
mobs:register_spawn("zombies:1arm", {"cityscape:road_broken", "cityscape:sidewalk_broken", "default:gravel",},15, 0, 70, 10, 170, false)
mobs:register_spawn("zombies:crawler", {"cityscape:road_broken", "cityscape:sidewalk_broken", "default:gravel",},15, 0, 70, 10, 170, false)
mobs:register_spawn("zombies:normal", {"cityscape:road_broken", "cityscape:sidewalk_broken", "default:gravel",},15, 0, 70, 10, 170, false)

-- Spawn Eggs
mobs:register_egg("zombies:1arm", "One Armed Zombie", "something.png", 1)
mobs:register_egg("zombies:crawler", "Crawling Zombie", "something.png", 1)
mobs:register_egg("zombies:normal", "Normal Zombie", "something.png", 1)
