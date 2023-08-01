Config = {}

Config.Ox_lib = {
	small_duration		= 5000,
	large_duration		= 7000,
	position			= 'center-right',
	notify_position		= 'center-right',
	take_hit			= '[E] to take a Hit [G] to stash',
	stashed				= 'Stashed',
	holding				= 'You already have it',
	not_holding			= 'You are not holding anything',
	no_choof			= 'You can not choof here',
	dead				= 'You are dead no choof for you',
	canCancel			= false,
	--need_juice		= 'You need a juice to hit up',		--- working on needing an juice item here as a reminder
}

Config.controls = {
	use 			= 51,		-- Take a hit (51)"E"
	stash	 		= 58,		-- Stash your bong (58)"G"
	activate_time 	= 250,		-- Time in (ms) to hold the button (250) by default.
	cloud_size 		= 0.5,		-- The size of the smoke particles. (0.5) by default.
	calldown 		= 4000,		-- The time in (ms) to wait before next hit. (4000) by default.
	cloud_time		= 4500		-- The amount of time in (ms) the smoke from the bong will linger. (3200) by default.
}

Config.Vape_Models = {			---my props have the same name as the model, but if you have other props, you can add them here.
	{
		prop = "idrp_vape_morph",
		itemName = 'idrp_vape_morph',
		bone = 64016,
		coords = vector3(0.06, -0.02, 0.0),
		rcoords = vector3(-45.0, 0.0, 0.0)
	},
	{
		prop = "idrp_vape_gblue",
		itemName = 'idrp_vape_gblue',
		bone = 64016,
		coords = vector3(0.06, -0.02, 0.0),
		rcoords = vector3(-45.0, 0.0, 0.0)
	},
	{
		prop = "idrp_vape_ggreen",
		itemName = 'idrp_vape_ggreen',
		bone = 64016,
		coords = vector3(0.06, -0.02, 0.0),
		rcoords = vector3(-45.0, 0.0, 0.0)
	},
	{
		prop = "idrp_vape_gcyan",
		itemName = 'idrp_vape_gcyan',
		bone = 64016,
		coords = vector3(0.06, -0.02, 0.0),
		rcoords = vector3(-45.0, 0.0, 0.0)
	},
	{
		prop = "idrp_vape_gpurple",
		itemName = 'idrp_vape_gpurple',
		bone = 64016,
		coords = vector3(0.06, -0.02, 0.0),
		rcoords = vector3(-45.0, 0.0, 0.0)
	},
	{
		prop = "idrp_vape_gred",
		itemName = 'idrp_vape_red',
		bone = 64016,
		coords = vector3(0.06, -0.02, 0.0),
		rcoords = vector3(-45.0, 0.0, 0.0)
	},
	{
		prop = "idrp_vape_gyellow",
		itemName = 'idrp_vape_gyellow',
		bone = 64016,
		coords = vector3(0.06, -0.02, 0.0),
		rcoords = vector3(-45.0, 0.0, 0.0)
	},
	{
		prop = "idrp_vape_lgblue",
		itemName = 'idrp_vape_lgblue',
		bone = 64017,
		coords = vector3(0.03, 0.0, 0.0),
		rcoords = vector3(-45.0, 25.0, 0.0)
	},
	{
		prop = "idrp_vape_lggreen",
		itemName = 'idrp_vape_lggreen',
		bone = 64017,
		coords = vector3(0.03, 0.0, 0.0),
		rcoords = vector3(-45.0, 25.0, 0.0)
	},
	{
		prop = "idrp_vape_lgcyan",
		itemName = 'idrp_vape_lgcyan',
		bone = 64017,
		coords = vector3(0.03, 0.0, 0.0),
		rcoords = vector3(-45.0, 25.0, 0.0)
	},
	{
		prop = "idrp_vape_lgpurple",
		itemName = 'idrp_vape_lgpurple',
		bone = 64017,
		coords = vector3(0.03, 0.0, 0.0),
		rcoords = vector3(-45.0, 25.0, 0.0)
	},
	{
		prop = "idrp_vape_lgred",
		itemName = 'idrp_vape_lgred',
		bone = 64017,
		coords = vector3(0.03, 0.0, 0.0),
		rcoords = vector3(-45.0, 25.0, 0.0)
	},
	{
		prop = "idrp_vape_lgyellow",
		itemName = 'idrp_vape_lgyellow',
		bone = 64017,
		coords = vector3(0.03, 0.0, 0.0),
		rcoords = vector3(-45.0, 25.0, 0.0)
	},
	{
		prop = "idrp_vape_mcyan",
		itemName = 'idrp_vape_mcyan',
		bone = 64017,
		coords = vector3(0.03, 0.0, 0.0),
		rcoords = vector3(-45.0, 25.0, 0.0)
	},
	{
		prop = "idrp_vape_mblue",
		itemName = 'idrp_vape_mblue',
		bone = 64017,
		coords = vector3(0.03, 0.0, 0.0),
		rcoords = vector3(-45.0, 25.0, 0.0)
	},
	{
		prop = "idrp_vape_mpurple",
		itemName = 'idrp_vape_mpurple',
		bone = 64017,
		coords = vector3(0.03, 0.0, 0.0),
		rcoords = vector3(-45.0, 25.0, 0.0)
	},
	{
		prop = "idrp_vape_mred",
		itemName = 'idrp_vape_mred',
		bone = 64017,
		coords = vector3(0.03, 0.0, 0.0),
		rcoords = vector3(-45.0, 25.0, 0.0)
	},
	{
		prop = "idrp_vape_myellow",
		itemName = 'idrp_vape_myellow',
		bone = 64017,
		coords = vector3(0.03, 0.0, 0.0),
		rcoords = vector3(-45.0, 25.0, 0.0)
	},
	{
		prop = "idrp_vape_mgreen",
		itemName = 'idrp_vape_mygreen',
		bone = 64017,
		coords = vector3(0.03, 0.0, 0.0),
		rcoords = vector3(-45.0, 25.0, 0.0)
	},
	{
		prop = "idrp_vape_mmorph",
		itemName = 'idrp_vape_mmorph',
		bone = 64017,
		coords = vector3(0.03, 0.0, 0.0),
		rcoords = vector3(-45.0, 25.0, 0.0)
	},
}
--test new vector3 and control statements
--[[{ prop = "idrp_vape_morph",		itemName = 'idrp_vape_morph',		bone = 64016,	x = 0.06, y =-0.02, z= 0.0, xr = -45.0, yr = 0.0, zr = 0.0},
	{ prop = "idrp_vape_gblue",		itemName = 'idrp_vape_gblue',		bone = 64016,	x = 0.06, y =-0.02, z= 0.0, xr = -45.0, yr = 0.0, zr = 0.0},
	{ prop = "idrp_vape_ggreen",	itemName = 'idrp_vape_ggreen',		bone = 64016,	x = 0.06, y =-0.02, z= 0.0, xr = -45.0, yr = 0.0, zr = 0.0},
	{ prop = "idrp_vape_gcyan",		itemName = 'idrp_vape_gcyan',		bone = 64016,	x = 0.06, y =-0.02, z= 0.0, xr = -45.0, yr = 0.0, zr = 0.0},
	{ prop = "idrp_vape_gpurple",	itemName = 'idrp_vape_gpurple',		bone = 64016,	x = 0.06, y =-0.02, z= 0.0, xr = -45.0, yr = 0.0, zr = 0.0},
	{ prop = "idrp_vape_gred",		itemName = 'idrp_vape_red',			bone = 64016,	x = 0.06, y =-0.02, z= 0.0, xr = -45.0, yr = 0.0, zr = 0.0},
	{ prop = "idrp_vape_gyellow",	itemName = 'idrp_vape_gyellow',		bone = 64016,	x = 0.06, y =-0.02, z= 0.0, xr = -45.0, yr = 0.0, zr = 0.0},
	{ prop = "idrp_vape_lgblue",	itemName = 'idrp_vape_lgblue',		bone = 64017,	x = 0.03, y = 0.0, z= 0.0, xr = -45.0, yr = 25.0, zr = 0.0},
	{ prop = "idrp_vape_lggreen",	itemName = 'idrp_vape_lggreen',		bone = 64017,	x = 0.03, y = 0.0, z= 0.0, xr = -45.0, yr = 25.0, zr = 0.0},
	{ prop = "idrp_vape_lgcyan",	itemName = 'idrp_vape_lgcyan',		bone = 64017,	x = 0.03, y = 0.0, z= 0.0, xr = -45.0, yr = 25.0, zr = 0.0},
	{ prop = "idrp_vape_lgpurple",	itemName = 'idrp_vape_lgpurple',	bone = 64017,	x = 0.03, y = 0.0, z= 0.0, xr = -45.0, yr = 25.0, zr = 0.0},
	{ prop = "idrp_vape_lgred",		itemName = 'idrp_vape_lgred',		bone = 64017,	x = 0.03, y = 0.0, z= 0.0, xr = -45.0, yr = 25.0, zr = 0.0},
	{ prop = "idrp_vape_lgyellow",	itemName = 'idrp_vape_lgyellow',	bone = 64017,	x = 0.03, y = 0.0, z= 0.0, xr = -45.0, yr = 25.0, zr = 0.0},
	{ prop = "idrp_vape_mcyan",		itemName = 'idrp_vape_mcyan',		bone = 64017,	x = 0.03, y = 0.0, z= 0.0, xr = -45.0, yr = 25.0, zr = 0.0},
	{ prop = "idrp_vape_mblue",		itemName = 'idrp_vape_mblue',		bone = 64017,	x = 0.03, y = 0.0, z= 0.0, xr = -45.0, yr = 25.0, zr = 0.0},
	{ prop = "idrp_vape_mpurple",	itemName = 'idrp_vape_mpurple',		bone = 64017,	x = 0.03, y = 0.0, z= 0.0, xr = -45.0, yr = 25.0, zr = 0.0},
	{ prop = "idrp_vape_mred",		itemName = 'idrp_vape_mred',		bone = 64017,	x = 0.03, y = 0.0, z= 0.0, xr = -45.0, yr = 25.0, zr = 0.0},
	{ prop = "idrp_vape_myellow",	itemName = 'idrp_vape_myellow',		bone = 64017,	x = 0.03, y = 0.0, z= 0.0, xr = -45.0, yr = 25.0, zr = 0.0},
	{ prop = "idrp_vape_mgreen",	itemName = 'idrp_vape_mygreen',		bone = 64017,	x = 0.03, y = 0.0, z= 0.0, xr = -45.0, yr = 25.0, zr = 0.0},
	{ prop = "idrp_vape_mmorph",	itemName = 'idrp_vape_mmorph',		bone = 64017,	x = 0.03, y = 0.0, z= 0.0, xr = -45.0, yr = 25.0, zr = 0.0},]]--
