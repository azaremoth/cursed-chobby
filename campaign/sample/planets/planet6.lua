--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Planet config

local function GetPlanet(planetUtilities, planetID)
	
	local image = LUA_DIRNAME .. "images/planets/mars.png"
	
	local planetData = {
		name = "Mars",
		predownloadMap = true, 
		mapDisplay = {
			x = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][1]) or 1.00,
			y = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][2]) or 1.00,
			image = image,
			size = planetUtilities.PLANET_SIZE_MAP*0.26,
			hintText = "Click this planet to begin.",
			hintSize = {400, 100}, -- Size of the hint box
		},
		infoDisplay = {
			image = image,
			size = planetUtilities.PLANET_SIZE_INFO,
			backgroundImage = planetUtilities.backgroundImages[math.floor(math.random()*#planetUtilities.backgroundImages) + 1],
			terrainType = "Desert",
			radius = "3396 km",
			primary = "Mars",
			primaryType = "Sol",
			milRating = 1,
--			feedbackLink = "http://zero-k.info/Forum/Thread/24417",
			text = [[Something is terribly wrong here! We were called to support a "clean-up mission" because of some sort of wierd failed experiments. However, this Mars station is filled to the top with demonic creatures and there is no way to stop them here. We need to get to the airport and hope for evacuation!]]
		},
		tips = {
			{
				image = "unitpics/tc_ghoul.png",
				text = [[Un unknown enemy entered the battleground.]]
			},		
		},		
		gameConfig = {
			mapName = "TandemCraters",
			missionStartscript = false,			
			playerConfig = {
				startX = 500,
				startZ = 500,
				allyTeam = 0,
				startMetal = 10,
				startEnergy = 10,
				commanderParameters = {	},
				extraUnlocks = { },
				commander = false,
				startUnits = {
					{
						name = "euf_sarge_camp6",
						x = 7300,
						z = 860,
						facing = 3,
						defeatIfDestroyedObjectiveID = 1,
						victoryAtLocation = {
							x = 2600,
							z = 770,
							radius = 150,
							--objectiveID = 5,
							
							-- Map marker will appear at the victory location. Only set for one unit otherwise duplicates will appear.
							mapMarker = {
								text = "Walk Here",
								color = "green"
							},
						},
						{cmdID = planetUtilities.COMMAND.RAW_MOVE, pos = {2400, 770}, options = {"shift"}},
					},					
				},
				midgameUnits = {
--					{	name = "euf_transport_mis",	x = 800, z = 3600, facing = 0, spawnRadius = 0, delay = 4*30, orbitalDrop = false, },
--					{	name = "euf_transport_mis",	x = 2880, z = 180, facing = 2, spawnRadius = 0, delay = 90*30, orbitalDrop = false, },						
				},
			},
			modoptions = { },
						
			initialWrecks = {
					{ name = 'barrel', x = 2739, z = 161, facing = 0, },
					{ name = 'barrel', x = 2749, z = 202, facing = 0, },
					{ name = 'barrel', x = 2763, z = 188, facing = 0, },
					{ name = 'barrel', x = 2779, z = 187, facing = 0, },
					{ name = 'barrel', x = 2849, z = 497, facing = 0, },
					{ name = 'barrel', x = 2864, z = 476, facing = 0, },
					{ name = 'barrel', x = 2874, z = 462, facing = 0, },
					{ name = 'barrel', x = 2874, z = 480, facing = 0, },
					{ name = 'barrel', x = 3130, z = 155, facing = 0, },
					{ name = 'barrel', x = 3139, z = 142, facing = 0, },
					{ name = 'barrel', x = 3145, z = 158, facing = 0, },
					{ name = 'barrel', x = 5321, z = 1007, facing = 0, },
					{ name = 'barrel', x = 5338, z = 1048, facing = 0, },
					{ name = 'barrel', x = 5859, z = 1460, facing = 0, },
					{ name = 'barrel', x = 5869, z = 1451, facing = 0, },
					{ name = 'barrel', x = 5920, z = 1461, facing = 0, },
					{ name = 'barrel', x = 5926, z = 1478, facing = 0, },
					{ name = 'barrel', x = 6284, z = 1588, facing = 0, },
					{ name = 'barrel', x = 6301, z = 1526, facing = 0, },
					{ name = 'barrel', x = 6925, z = 491, facing = 0, },
					{ name = 'barrel', x = 6925, z = 505, facing = 0, },
					{ name = 'barrel', x = 6936, z = 500, facing = 0, },
					{ name = 'barrel', x = 7857, z = 964, facing = 0, },
					{ name = 'barrel', x = 7948, z = 1002, facing = 0, },
					{ name = 'barrel', x = 8045, z = 1255, facing = 0, },
					{ name = 'barrel', x = 8057, z = 1246, facing = 0, },
					{ name = 'barrels', x = 5892, z = 1427, facing = 2, },
					{ name = 'barrels', x = 5896, z = 1452, facing = 0, },
					{ name = 'barrels', x = 6321, z = 1550, facing = 3, },
					{ name = 'barrels', x = 7089, z = 1451, facing = 0, },
					{ name = 'bighouse', x = 5240, z = 1012, facing = 0, },
					{ name = 'bighouse', x = 7983, z = 1201, facing = 0, },
					{ name = 'bld_door', x = 2313, z = 379, facing = 0, },
					{ name = 'bld_door', x = 7688, z = 146, facing = 0, },
					
					{ name = 'bld_gate', x = 7342, z = 860, facing = 3, },
					{ name = 'wall_pillar2', x = 7300, z = 815, facing = 0, },
					{ name = 'wall_pillar2', x = 7300, z = 905, facing = 2, },	
					{ name = 'wall_pillar2', x = 7250, z = 815, facing = 0, },
					{ name = 'wall_pillar2', x = 7250, z = 905, facing = 2, },
					{ name = 'wall_pillar2', x = 7200, z = 815, facing = 0, },
					{ name = 'wall_pillar2', x = 7200, z = 905, facing = 2, },					
					{ name = 'wall_pillar2', x = 7150, z = 815, facing = 0, },
					{ name = 'wall_pillar2', x = 7150, z = 905, facing = 2, },					
					
					{ name = 'bld_tunnel_high', x = 6060, z = 860, facing = 0, },
					{ name = 'bld_tunnel_high', x = 6294, z = 860, facing = 0, },
					{ name = 'bld_tunnel_high', x = 6524, z = 860, facing = 0, },
					{ name = 'bld_tunnel_high', x = 6524, z = 860, facing = 0, },
					{ name = 'bld_tunnel_low', x = 2295, z = 188, facing = 0, },
					{ name = 'bld_tunnel_low', x = 3311, z = 115, facing = 1, },
					{ name = 'bld_tunnel_low', x = 3338, z = 314, facing = 1, },
					{ name = 'bld_tunnel_low', x = 5110, z = 205, facing = 0, },
					{ name = 'bld_tunnel_low', x = 5237, z = 347, facing = 3, },
					{ name = 'bld_tunnel_low', x = 7131, z = 1511, facing = 0, },
					{ name = 'bld_tunnel_low', x = 7863, z = 935, facing = 3, },
					{ name = 'bld_tunnel_low', x = 7980, z = 1076, facing = 0, },
					{ name = 'box', x = 2453, z = 30, facing = 0, },
					{ name = 'box', x = 2454, z = 9, facing = 0, },
					{ name = 'box', x = 2471, z = 19, facing = 0, },
					{ name = 'box', x = 2734, z = 503, facing = 0, },
					{ name = 'box', x = 2745, z = 519, facing = 0, },
					{ name = 'box', x = 2884, z = 441, facing = 0, },
					{ name = 'box', x = 2904, z = 495, facing = 0, },
					{ name = 'box', x = 2929, z = 794, facing = 0, },
					{ name = 'box', x = 2929, z = 813, facing = 0, },
					{ name = 'box', x = 2932, z = 830, facing = 0, },
					{ name = 'box', x = 2945, z = 805, facing = 0, },
					{ name = 'box', x = 5302, z = 424, facing = 0, },
					{ name = 'box', x = 5321, z = 1024, facing = 0, },
					{ name = 'box', x = 5321, z = 1041, facing = 0, },
					{ name = 'box', x = 5339, z = 1033, facing = 0, },
					{ name = 'box', x = 5655, z = 1260, facing = 0, },
					{ name = 'box', x = 5673, z = 1269, facing = 0, },
					{ name = 'box', x = 7350, z = 454, facing = 0, },
					{ name = 'box', x = 7351, z = 437, facing = 0, },
					{ name = 'box', x = 7874, z = 973, facing = 0, },
					{ name = 'box', x = 7891, z = 969, facing = 0, },
					{ name = 'box', x = 7910, z = 999, facing = 0, },
					{ name = 'boxes', x = 5276, z = 406, facing = 2, },
					{ name = 'boxes', x = 5306, z = 389, facing = 0, },
					{ name = 'boxes', x = 5665, z = 1433, facing = 2, },
					{ name = 'boxes', x = 6282, z = 1564, facing = 2, },
					{ name = 'boxes', x = 6312, z = 1579, facing = 0, },
					{ name = 'boxes', x = 7363, z = 479, facing = 0, },
					{ name = 'boxes', x = 7821, z = 977, facing = 0, },
					{ name = 'buildingfeature_1', x = 6968, z = 439, facing = 0, },
					{ name = 'buildingfeature_18', x = 6110, z = 1864, facing = 0, },
					{ name = 'buildingfeature_18', x = 6161, z = 1864, facing = 0, },
					{ name = 'buildingfeature_18', x = 6396, z = 1864, facing = 0, },
					{ name = 'buildingfeature_18', x = 6396, z = 1908, facing = 0, },
					{ name = 'buildingfeature_2', x = 7139, z = 1634, facing = 0, },
					{ name = 'buildingfeature_3', x = 2230, z = 46, facing = 0, },
					{ name = 'buildingfeature_5', x = 7279, z = 1641, facing = 0, },
					{ name = 'buildingfeature_6', x = 7152, z = 81, facing = 0, },
					{ name = 'buildingfeature_6', x = 7156, z = 129, facing = 0, },
					{ name = 'buildingfeature_6', x = 7439, z = 107, facing = 0, },
					{ name = 'buildingfeature_6', x = 7679, z = 109, facing = 0, },
					{ name = 'buildingfeature_6', x = 7725, z = 110, facing = 0, },
					{ name = 'buildingfeature_6', x = 7940, z = 113, facing = 0, },
					{ name = 'buildingmodule_lvl2_1', x = 2215, z = 675, facing = 0, },
					{ name = 'buildingmodule_b2l_3', x = 2215, z = 675, facing = 0, },
					{ name = 'buildingmodule_lvl1_3', x = 2259, z = 60, facing = 0, },
					{ name = 'bld_b1l_3', x = 2259, z = 60, facing = 0, },
					{ name = 'buildingmodule_lvl0_6', x = 2315, z = 321, facing = 0, },
					{ name = 'buildingmodule_lvl2_2', x = 3223, z = 111, facing = 0, },
					{ name = 'buildingmodule_b2l_2', x = 3223, z = 111, facing = 0, },
					{ name = 'buildingmodule_b2l_2', x = 3251, z = 321, facing = 0, },
					{ name = 'buildingmodule_lvl2_6', x = 3251, z = 321, facing = 0, },
					{ name = 'buildingmodule_lvl0_4', x = 5110, z = 61, facing = 0, },
					{ name = 'buildingmodule_lvl0_4', x = 5114, z = 351, facing = 2, },
					{ name = 'buildingmodule_b2l_3', x = 5114, z = 351, facing = 0, },
					{ name = 'buildingmodule_lvl2_8', x = 5114, z = 351, facing = 2, },
					{ name = 'buildingmodule_lvl0_2', x = 5237, z = 765, facing = 2, },
					{ name = 'buildingmodule_lvl0_4', x = 5395, z = 343, facing = 0, },
					{ name = 'bld_b1l_2', x = 5778, z = 1345, facing = 0, },
					{ name = 'buildingmodule_lvl0_2', x = 6136, z = 1876, facing = 0, },
					{ name = 'bld_b1l_3', x = 6464, z = 1878, facing = 0, },
					{ name = 'buildingmodule_lvl1_2', x = 6480, z = 1875, facing = 0, },
					{ name = 'bld_b1l_1', x = 7122, z = 404, facing = 0, },
					{ name = 'buildingmodule_b2l_1', x = 7123, z = 60, facing = 0, },
					{ name = 'buildingmodule_lvl2_5', x = 7123, z = 60, facing = 0, },
					{ name = 'bld_b1l_1', x = 7128, z = 1320, facing = 2, },
					{ name = 'bld_b1l_3', x = 7130, z = 1701, facing = 3, },
					{ name = 'buildingmodule_lvl1_6', x = 7165, z = 1646, facing = 0, },
					{ name = 'buildingmodule_b2l_3', x = 7252, z = 1651, facing = 0, },
					{ name = 'buildingmodule_lvl2_2', x = 7252, z = 1651, facing = 0, },
					{ name = 'buildingmodule_b2l_1', x = 7405, z = 68, facing = 0, },
					{ name = 'buildingmodule_lvl2_5', x = 7405, z = 68, facing = 0, },
					{ name = 'bld_b1l_2', x = 7658, z = 937, facing = 0, },
					{ name = 'buildingmodule_b2l_3', x = 7676, z = 941, facing = 0, },
					{ name = 'buildingmodule_lvl2_6', x = 7682, z = 928, facing = 0, },
					{ name = 'buildingmodule_b2l_1', x = 7688, z = 74, facing = 0, },
					{ name = 'buildingmodule_lvl2_5', x = 7688, z = 74, facing = 0, },
					{ name = 'buildingmodule_b2l_1', x = 7969, z = 74, facing = 0, },
					{ name = 'buildingmodule_lvl2_5', x = 7969, z = 74, facing = 0, },
					{ name = 'buildingmodule_b2l_2', x = 7980, z = 934, facing = 0, },
					{ name = 'buildingmodule_lvl4_8', x = 7980, z = 934, facing = 0, },
					{ name = 'buildingmodule_lvl2_6', x = 7980, z = 934, facing = 0, },
					{ name = 'buildingmodule_lvl3_4', x = 7980, z = 934, facing = 0, },
					{ name = 'buildingmodule_lvl0_6', x = 8137, z = 935, facing = 3, },
					{ name = 'buildingwindow_18', x = 8054, z = 1207, facing = 0, },
					{ name = 'buildingwindow_22', x = 7667, z = 982, facing = 3, },
					{ name = 'buildingwindow_22', x = 7701, z = 982, facing = 3, },
					{ name = 'containertype1', x = 5085, z = 1305, facing = 3, },
					{ name = 'containertype1', x = 5730, z = 1851, facing = 0, },
					{ name = 'containertype2', x = 2711, z = 66, facing = 0, },
					{ name = 'containertype2', x = 5793, z = 1850, facing = 0, },
					{ name = 'containertype3', x = 2599, z = 59, facing = 0, },
					{ name = 'containertype3', x = 2653, z = 65, facing = 0, },
					{ name = 'containertype3', x = 5084, z = 1254, facing = 3, },
					{ name = 'containertype3', x = 5692, z = 1849, facing = 0, },
					{ name = 'containertype4', x = 2781, z = 54, facing = 3, },
					{ name = 'containertype4', x = 5083, z = 1202, facing = 3, },
					{ name = 'containertype4', x = 5656, z = 1849, facing = 0, },
					{ name = 'desertrock1', x = 5436, z = 4786, facing = 0, },
					{ name = 'desertrock1', x = 5485, z = 4743, facing = 3, },
					{ name = 'desertrock2', x = 5427, z = 4741, facing = 0, },
					{ name = 'desertrock2', x = 5462, z = 4759, facing = 1, },
					{ name = 'desertrock2', x = 5477, z = 4796, facing = 1, },
					{ name = 'desertrock2', x = 5523, z = 4694, facing = 1, },
					{ name = 'euf_walls_lvl2_mis', x = 5025, z = 40, facing = 3, },
					{ name = 'euf_walls_lvl2_mis', x = 5025, z = 111, facing = 3, },					
					{ name = 'euf_walls_lvl2_mis', x = 5025, z = 182, facing = 3, },
					{ name = 'euf_walls_lvl2_mis', x = 5025, z = 253, facing = 3, },
					{ name = 'euf_walls_lvl2_mis', x = 5025, z = 324, facing = 3, },
					{ name = 'euf_walls_lvl2_mis', x = 5025, z = 395, facing = 3, },
					{ name = 'euf_walls_lvl2_mis', x = 5025, z = 466, facing = 3, },					
					{ name = 'euf_walls_lvl2_mis', x = 5025, z = 537, facing = 3, },
					{ name = 'euf_walls_lvl2_mis', x = 5025, z = 608, facing = 3, },					
					{ name = 'euf_walls_lvl2_mis', x = 5025, z = 679, facing = 3, },
					{ name = 'euf_walls_lvl2_mis', x = 5025, z = 750, facing = 3, },
					{ name = 'euf_walls_lvl2_mis', x = 5025, z = 1090, facing = 3, },
					{ name = 'euf_walls_lvl2_mis', x = 5025, z = 1161, facing = 3, },
					{ name = 'euf_walls_lvl2_mis', x = 5025, z = 1232, facing = 3, },
					{ name = 'euf_walls_lvl2_mis', x = 5025, z = 1303, facing = 3, },
					{ name = 'euf_walls_lvl2_mis', x = 5025, z = 1374, facing = 3, },
					{ name = 'euf_walls_lvl2_mis', x = 5025, z = 1445, facing = 3, },
					{ name = 'euf_walls_lvl2_mis', x = 5025, z = 1587, facing = 3, },
					{ name = 'euf_walls_lvl2_mis', x = 5025, z = 1019, facing = 3, },
					{ name = 'euf_walls_lvl2_mis', x = 5025, z = 1516, facing = 3, },
					{ name = 'euf_walls_lvl2_mis', x = 5025, z = 1729, facing = 3, },
					{ name = 'euf_walls_lvl2_mis', x = 5025, z = 1658, facing = 3, },
					{ name = 'euf_walls_lvl2_mis', x = 5025, z = 1800, facing = 3, },
					{ name = 'euf_walls_lvl2_mis', x = 5025, z = 1871, facing = 3, },
					{ name = 'euf_walls_lvl2_mis', x = 5062, z = 786, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 5062, z = 984, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 5112, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 5133, z = 786, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 5133, z = 983, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 5182, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 5253, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 5324, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 5395, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 5465, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 5536, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 5606, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 5677, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 5748, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 5819, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 5890, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 5960, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 6030, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 6596, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 6667, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 6737, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 6808, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 6879, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 6950, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 7020, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 7091, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 7162, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 7233, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 7304, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 7374, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 7448, z = 1908, facing = 0, },					
					{ name = 'euf_walls_lvl2_mis', x = 7516, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 7586, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 7657, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 7728, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 7799, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 7869, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 7939, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 8010, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 8082, z = 1908, facing = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 8152, z = 1908, facing = 0, },
---					{ name = 'geovent', x = 2716, z = 364, facing = 0, },
					{ name = 'landingpad', x = 2612, z = 263, facing = 0, },
					{ name = 'landingpad', x = 2615, z = 437, facing = 0, },
					{ name = 'landingpad', x = 2793, z = 443, facing = 0, },
					{ name = 'landingpad', x = 2802, z = 276, facing = 0, },
					{ name = 'pad', x = 2854, z = 830, facing = 0, },
					{ name = 'pad', x = 6903, z = 73, facing = 3, },
					{ name = 'tank', x = 5067, z = 1871, facing = 0, },
					{ name = 'tank', x = 5075, z = 1818, facing = 0, },
					{ name = 'tank', x = 5141, z = 1009, facing = 0, },
					{ name = 'tank', x = 5334, z = 737, facing = 0, },
					{ name = 'tank', x = 5335, z = 788, facing = 0, },
					{ name = 'tank', x = 6601, z = 1874, facing = 0, },
					{ name = 'tank', x = 6654, z = 1872, facing = 0, },
					{ name = 'tank', x = 8167, z = 542, facing = 0, },
					{ name = 'tank', x = 8167, z = 597, facing = 0, },
					{ name = 'tank', x = 8167, z = 649, facing = 0, },
					{ name = 'tower', x = 6060, z = 760, facing = 0, },
					{ name = 'tower', x = 6060, z = 960, facing = 2, },
					{ name = 'tower', x = 6294, z = 760, facing = 0, },
					{ name = 'tower', x = 6294, z = 960, facing = 2, },
					{ name = 'tower', x = 6523, z = 760, facing = 0, },
					{ name = 'tower', x = 6523, z = 960, facing = 2, },
					{ name = 'tube', x = 7135, z = 295, facing = 0, },
					{ name = 'tube', x = 7136, z = 183, facing = 0, },
					{ name = 'tube', x = 7261, z = 72, facing = 3, },
					{ name = 'tube', x = 7262, z = 50, facing = 3, },
					{ name = 'tube', x = 7543, z = 81, facing = 3, },
					{ name = 'tube', x = 7544, z = 58, facing = 3, },
					{ name = 'tube', x = 7826, z = 86, facing = 3, },
					{ name = 'tube', x = 7827, z = 64, facing = 3, },
					{ name = 'tube', x = 8075, z = 921, facing = 1, },
					{ name = 'tube', x = 8076, z = 945, facing = 1, },
					{ name = 'tube_box', x = 5051, z = 1923, facing = 0, },
					{ name = 'tube_connect', x = 2716, z = 361, facing = 0, },
					{ name = 'tube_corner', x = 7055, z = 177, facing = 2, },
					{ name = 'tube_corner', x = 7096, z = 147, facing = 0, },
					{ name = 'tube_down', x = 6985, z = 1203, facing = 2, },
					{ name = 'tube_down', x = 6986, z = 538, facing = 0, },
					{ name = 'tube_down', x = 7040, z = 219, facing = 0, },
					{ name = 'tube_down', x = 7253, z = 1192, facing = 2, },
					{ name = 'tube_down', x = 7254, z = 536, facing = 0, },
					{ name = 'wall_pillar1', x = 2279, z = 650, facing = 1, },
					{ name = 'wall_pillar1', x = 2280, z = 700, facing = 1, },			
			},		

			aiConfig = {
				{
					startX = 2000,
					startZ = 200,
					aiLib = "NO AI",
					humanName = "Ally",
					allyTeam = 0,
					unlocks = {	},
					startUnits = {
						{ name = 'euf_marine', x = 6500, z = 560, facing = 2, {cmdID = planetUtilities.COMMAND.RAW_MOVE, pos = {500, 3500}, options = {"shift"}}, },
						{ name = 'euf_marine', x = 6550, z = 580, facing = 2, {cmdID = planetUtilities.COMMAND.RAW_MOVE, pos = {500, 3500}, options = {"shift"}}, },
					}
				},
				{
					startX = 4000,
					startZ = 75,
					aiLib = "NO AI",
					humanName = "Enemy",
					unlocks = {},
					allyTeam = 1,
					commander = false,
					startUnits = {
						{ name = 'tc_ghoul', x = 543, z = 328, facing = 0, },
					},
					midgameUnits = {
						{	name = "tc_ghoul",	x = 7600, z = 850, facing = 0, spawnRadius = 0, delay = 4*30, orbitalDrop = false, },
						{	name = "tc_ghoul",	x = 7600, z = 870, facing = 2, spawnRadius = 0, delay = 5*30, orbitalDrop = false, },						
					},					
				},
			},
		terraform = {
			-- Terraforms have:
			--  * terraformShape: This is required. Either RECTANGLE, LINE or RAMP
			--  * terraformType: Required for RECTANGLE and LINE. Either LEVEL, RAISE or SMOOTH
			--  * position:
			--    * RECTANGLE - {left, top, right, bottom}
			--    * LINE      - {x1, z1, x2, z2}
			--    * RAMP      - {x1, y1, z1, x2, y2, z2}
			--  * height: Required for LEVEL and RAISE. Absolute for the former and relative for the latter.
			--  * width: Required for RAMP.
			--  * volumeSelection: NONE, RAISE_ONLY or LOWER_ONLY
			--  * needConstruction: boolean. Set to true to create a terraunit.
			--  * teamID: number. This is for use with needConstruction.
			-- Note that terraform has all the restrictions of terraform that occurs during a game. Shapes such
			-- as very thin walls cannot be created.
			{
				terraformShape = planetUtilities.TERRAFORM_SHAPE.RECTANGLE,
				terraformType = planetUtilities.TERRAFORM_TYPE.LEVEL,
				position = {2450, 50, 2450 + 550, 50 + 550}, 
				height = 400,
				volumeSelection = planetUtilities.TERRAFORM_VOLUME.LOWER_ONLY,
			},	
			{
				terraformShape = planetUtilities.TERRAFORM_SHAPE.RECTANGLE,
				terraformType = planetUtilities.TERRAFORM_TYPE.LEVEL,
				position = {4900, 0, 4900 + 75, 1500}, 
				height = 400,
				volumeSelection = planetUtilities.TERRAFORM_VOLUME.LOWER_ONLY,
			},
			{
				terraformShape = planetUtilities.TERRAFORM_SHAPE.RECTANGLE,
				terraformType = planetUtilities.TERRAFORM_TYPE.RAISE,
				position = {5800, 830, 6930, 890}, 
				height = 2,
				volumeSelection = planetUtilities.TERRAFORM_VOLUME.NONE,
			},	
			{
				terraformShape = planetUtilities.TERRAFORM_SHAPE.RAMP,
				position = {6870, 500, 860, 7350, 375, 860}, 
				width = 100,
				volumeSelection = planetUtilities.TERRAFORM_VOLUME.LOWER_ONLY,
			},
			{
				terraformShape = planetUtilities.TERRAFORM_SHAPE.RAMP,
				position = {2680, 1050, 400, 2680, 1770, 565}, 
				width = 100,
				volumeSelection = planetUtilities.TERRAFORM_VOLUME.LOWER_ONLY,
			},			
		},
		
		-- Configuration for what causes defeat for each allyTeam. Indexed by allyTeam.
		defeatConditionConfig = {
				-- Indexed by allyTeam.
				[0] = {},
				[1] = {
					ignoreUnitLossDefeat = false,
					vitalCommanders = false,
					loseAfterSeconds = false,
--					allyTeamLossObjectiveID = 2,
				},				
			},
			objectiveConfig = {
				[1] = {
					description = "Do not die out here.",
				},
				[2] = {
					description = "Get to the space port.",
				},				
			},
			bonusObjectiveConfig = {
				[1] = { -- Win by 10:00
					victoryByTime = 600,
					image = planetUtilities.ICON_OVERLAY.CLOCK,
					description = "Win by 10:00",
					experience = planetUtilities.BONUS_EXP,
				},
			},
		},
		completionReward = {
			experience = planetUtilities.MAIN_EXP,
			units = {	},
			modules = {},
			abilities = {},
			codexEntries = {}
		},
	}
	
	return planetData
end

return GetPlanet
