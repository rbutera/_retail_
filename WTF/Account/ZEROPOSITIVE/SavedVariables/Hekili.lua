
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Ryugasm - Draenor"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["runOnce"] = {
				["autoconvertDisplayToggle_20190621_1"] = true,
				["autoconvertDelaySweepToExtend_20190729"] = true,
				["resetGlobalCooldownSync_20210403"] = true,
				["resetPotionsToDefaults_20190717"] = true,
				["resetRogueMfDOption_20200226"] = true,
				["enableAllOfTheThings_20180820"] = true,
				["forceEnableEnhancedRecheckBoomkin_20210712"] = true,
				["autoconvertGlowsForCustomGlow_20190326"] = true,
				["resetAllPotions_20201209"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
			},
			["specs"] = {
				[269] = {
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["enhancedRecheck"] = false,
					["strict"] = false,
					["enabled"] = true,
					["petbased"] = false,
					["custom1Name"] = "Custom 1",
					["cycle"] = true,
					["maxRefresh"] = 10,
					["damagePets"] = false,
					["settings"] = {
						["sef_one_charge"] = false,
						["tok_damage"] = 1,
						["check_wdp_range"] = false,
						["allow_fsk"] = false,
						["optimize_reverse_harm"] = false,
					},
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["package"] = "Windwalker",
					["buffPadding"] = 0,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "potion_of_spectral_agility",
					["throttleTime"] = false,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 8,
					["nameplates"] = true,
					["damageRange"] = 0,
				},
				[268] = {
					["custom2Name"] = "Custom 2",
					["package"] = "Brewmaster",
					["enhancedRecheck"] = false,
					["enabled"] = true,
					["petbased"] = false,
					["custom1Name"] = "Custom 1",
					["cycle"] = false,
					["maxRefresh"] = 10,
					["damagePets"] = false,
					["settings"] = {
						["purify_stagger_maxhp"] = 6,
						["purify_for_celestial"] = true,
						["bof_percent"] = 50,
						["ox_walker"] = true,
						["eh_percent"] = 65,
						["purify_stagger_currhp"] = 12,
					},
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["throttleTime"] = false,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["throttleRefresh"] = false,
					["buffPadding"] = 0,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "phantom_fire",
					["damage"] = true,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 8,
					["nameplates"] = true,
					["damageRange"] = 0,
				},
				[102] = {
					["enabled"] = true,
					["enhancedRecheck"] = true,
				},
			},
			["displays"] = {
				["Interrupts"] = {
					["rel"] = "CENTER",
					["y"] = -224.9999542236328,
					["x"] = -54.9999885559082,
				},
				["Cooldowns"] = {
					["rel"] = "CENTER",
					["y"] = -279.9999694824219,
				},
				["Primary"] = {
					["primaryWidth"] = 32,
					["rel"] = "CENTER",
					["queue"] = {
						["width"] = 32,
						["height"] = 32,
					},
					["y"] = -120.3456039428711,
					["x"] = -43.26989364624023,
					["primaryHeight"] = 32,
				},
				["AOE"] = {
					["primaryWidth"] = 32,
					["rel"] = "CENTER",
					["queue"] = {
						["width"] = 32,
						["height"] = 32,
					},
					["y"] = -119.6864624023438,
					["x"] = -42.26519393920898,
					["primaryHeight"] = 32,
				},
				["Defensives"] = {
					["rel"] = "CENTER",
					["y"] = -224.9999542236328,
					["x"] = -109.9999771118164,
				},
			},
			["packs"] = {
				["Windwalker"] = {
					["builtIn"] = true,
					["date"] = 20211227,
					["spec"] = 269,
					["desc"] = "Windwalker Monk\nDecember 27, 2021\n\nCharges:\n- Tweak Fists of Fury interrupt logic.\n- Tweak Spinning Crane Kick logic.\n- Add bossfight checks to many CD entries.\n- Add in-combat Fleshcraft.",
					["lists"] = {
						["opener"] = {
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 3",
								["cycle_tarrgets"] = "1",
								["action"] = "fist_of_the_white_tiger",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.chi_burst.enabled & chi.max - chi >= 3",
								["action"] = "expel_harm",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["criteria"] = "combo_strike & chi.max - chi >= 2",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi = 2",
								["action"] = "chi_wave",
							}, -- [4]
							{
								["action"] = "expel_harm",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["criteria"] = "chi.max - chi >= 2",
								["cycle_targets"] = 1,
							}, -- [6]
						},
						["weapons_of_order"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.weapons_of_order_ww.remains & ( cooldown.rising_sun_kick.remains > buff.weapons_of_order_ww.remains & buff.weapons_of_order_ww.remains < 2.1 || cooldown.rising_sun_kick.remains - buff.weapons_of_order_ww.remains > 1.9 & buff.weapons_of_order_ww.remains < 4.1 || buff.bloodlust.up & buff.invokers_delight.up & buff.invokers_delight.remains < buff.weapons_of_order_ww.remains )",
								["var_name"] = "blackout_kick_needed",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "! talent.serenity.enabled",
								["list_name"] = "cd_sef",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "talent.serenity.enabled",
								["list_name"] = "cd_serenity",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 2 & energy.time_to_max > 3",
								["action"] = "energizing_elixir",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 & buff.weapons_of_order_ww.remains < 1",
								["action"] = "fists_of_fury",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2",
								["action"] = "whirling_dragon_punch",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & active_enemies >= 3 & buff.weapons_of_order_ww.up",
								["action"] = "spinning_crane_kick",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "combo_strike & active_enemies <= 2 & variable.blackout_kick_needed",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up",
								["action"] = "spinning_crane_kick",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "chi = 0 & buff.weapons_of_order_ww.remains < 4",
								["action"] = "expel_harm",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "fist_of_the_white_tiger",
								["criteria"] = "chi = 0 & buff.weapons_of_order_ww.remains < 4",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["criteria"] = "chi = 0 & buff.weapons_of_order_ww.remains < 4",
								["cycle_targets"] = 1,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.storm_earth_and_fire.up & raid_event.adds.in > cooldown.fists_of_fury.duration * 0.6",
								["action"] = "fists_of_fury",
								["interrupt_if"] = "buff.weapons_of_order_ww.up",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.chi_energy.stack > 30 - 5 * active_enemies",
								["action"] = "spinning_crane_kick",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "fist_of_the_white_tiger",
								["criteria"] = "chi < 3",
								["cycle_targets"] = 1,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1",
								["action"] = "expel_harm",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= ( 1 + active_enemies > 1 )",
								["action"] = "chi_burst",
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["criteria"] = "( ! talent.hit_combo.enabled || combo_strike ) & chi.max - chi >= 2",
								["cycle_targets"] = 1,
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "active_enemies <= 3 & chi >= 3 || buff.weapons_of_order_ww.up",
								["cycle_targets"] = 1,
							}, -- [21]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [22]
							{
								["interrupt"] = "1",
								["action"] = "flying_serpent_kick",
								["enabled"] = true,
							}, -- [23]
						},
						["serenity"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.remains < 1",
								["action"] = "fists_of_fury",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ( active_enemies >= 3 || active_enemies > 1 & ! cooldown.rising_sun_kick.up )",
								["action"] = "spinning_crane_kick",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["criteria"] = "combo_strike",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3",
								["action"] = "fists_of_fury",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up",
								["action"] = "spinning_crane_kick",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "combo_strike & buff.weapons_of_order.up & cooldown.rising_sun_kick.remains > 2",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["interrupt_if"] = "buff.serenity.up&cooldown.rising_sun_kick.ready",
								["action"] = "fists_of_fury",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & debuff.bonedust_brew_debuff.up",
								["action"] = "spinning_crane_kick",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "fist_of_the_white_tiger",
								["criteria"] = "chi < 3",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "combo_strike || ! talent.hit_combo.enabled",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["action"] = "spinning_crane_kick",
								["enabled"] = true,
							}, -- [11]
						},
						["cd_serenity"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "cooldown.serenity.remains < 1 || pet.xuen_the_white_tiger.active & cooldown.serenity.remains > 30 || boss & fight_remains < 20",
								["var_name"] = "serenity_burst",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! variable.hold_xuen || boss & fight_remains < 25",
								["action"] = "invoke_xuen",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.serenity_burst",
								["action"] = "blood_fury",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.serenity_burst",
								["action"] = "berserking",
							}, -- [4]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.serenity_burst",
								["action"] = "fireblood",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "variable.serenity_burst",
								["action"] = "ancestral_call",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "variable.serenity_burst",
								["action"] = "bag_of_tricks",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "fight_remains > ( 180 - runeforge.fatal_touch.enabled * 120 ) || pet.xuen_the_white_tiger.active & ( ! covenant.necrolord || buff.bonedust_brew.up ) || ( cooldown.invoke_xuen_the_white_tiger.remains > fight_remains ) & buff.bonedust_brew.up || boss & fight_remains < 10",
								["action"] = "touch_of_death",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.rising_sun_kick.remains < execute_time",
								["action"] = "weapons_of_order",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "variable.serenity_burst",
								["action"] = "inscrutable_quantum_device",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "variable.serenity_burst",
								["action"] = "wrathstone",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "variable.serenity_burst",
								["action"] = "gladiators_badge",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "pet.xuen_the_white_tiger.active || boss & fight_remains < 20 || ! runeforge.invokers_delight.enabled",
								["name"] = "shadowgrasp_totem",
								["action"] = "shadowgrasp_totem",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "! variable.xuen_on_use_trinket || cooldown.invoke_xuen_the_white_tiger.remains > 20 || variable.hold_xuen",
								["action"] = "use_items",
							}, -- [15]
							{
								["action"] = "faeline_stomp",
								["enabled"] = true,
							}, -- [16]
							{
								["action"] = "fallen_order",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "boss & fight_remains < 15 || ( chi >= 2 & ( fight_remains > 60 & ( ( cooldown.serenity.remains > 10 || buff.serenity.up || cooldown.serenity.up ) & ( pet.xuen_the_white_tiger.active || cooldown.invoke_xuen_the_white_tiger.remains > 10 || variable.hold_xuen ) ) ) || ( fight_remains <= 60 & ( pet.xuen_the_White_tiger.active || cooldown.invoke_xuen_the_white_tiger.remains > fight_remains ) ) )",
								["action"] = "bonedust_brew",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.rising_sun_kick.remains < 2 || boss & fight_remains < 15",
								["action"] = "serenity",
							}, -- [19]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.pustule_eruption.enabled & buff.serenity.down & debuff.bonedust_brew_debuff.down & buff.bonedust_brew.down",
								["action"] = "fleshcraft",
							}, -- [21]
						},
						["st"] = {
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > cooldown.whirling_dragon_punch.duration * 0.8 || raid_event.adds.up",
								["action"] = "whirling_dragon_punch",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 2 & energy.time_to_max > 3 || chi.max - chi >= 4 & ( energy.time_to_max > 2 || ! prev_gcd.1.tiger_palm )",
								["action"] = "energizing_elixir",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.up & ( raid_event.adds.in > buff.dance_of_chiji.remains - 2 || raid_event.adds.up )",
								["action"] = "spinning_crane_kick",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.volatile_solvent.enabled & buff.storm_earth_and_fire.down & debuff.bonedust_brew_debuff.down",
								["interrupt_if"] = "buff.volatile_solvent_humanoid.up||energy.time_to_max<3||cooldown.rising_sun_kick.remains<2||cooldown.fists_of_fury.remains<2",
								["interrupt_immediate"] = "1",
								["action"] = "fleshcraft",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["criteria"] = "cooldown.serenity.remains > 1 || ! talent.serenity.enabled & ( cooldown.weapons_of_order.remains > 4 || ! covenant.kyrian )",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( raid_event.adds.in > cooldown.fists_of_fury.duration * 0.8 || raid_event.adds.up ) & ( energy.time_to_max > execute_time - 1 || chi.max - chi <= 1 || buff.storm_earth_and_fire.remains < execute_time + 1 ) || fight_remains < execute_time + 1 || debuff.bonedust_brew_debuff.up",
								["action"] = "fists_of_fury",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.the_emperors_capacitor.stack > 19 & energy.time_to_max > execute_time - 1 & cooldown.rising_sun_kick.remains > execute_time || buff.the_emperors_capacitor.stack > 14 & ( cooldown.serenity.remains < 5 & talent.serenity.enabled || cooldown.weapons_of_order.remains < 5 & covenant.kyrian || fight_remains < 5 )",
								["action"] = "crackling_jade_lightning",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.rushing_jade_wind.down & active_enemies > 1",
								["action"] = "rushing_jade_wind",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "fist_of_the_white_tiger",
								["criteria"] = "chi < 3",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1",
								["action"] = "expel_harm",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1 & active_enemies = 1 & raid_event.adds.in > 20 || chi.max - chi >= 2 & active_enemies >= 2",
								["action"] = "chi_burst",
							}, -- [11]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["criteria"] = "combo_strike & chi.max - chi >= 2 & buff.storm_earth_and_fire.down",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.chi_energy.stack > 30 - 5 * active_enemies & buff.storm_earth_and_fire.down & ( cooldown.rising_sun_kick.remains > 2 & cooldown.fists_of_fury.remains > 2 || cooldown.rising_sun_kick.remains < 3 & cooldown.fists_of_fury.remains > 3 & chi > 3 || cooldown.rising_sun_kick.remains > 3 & cooldown.fists_of_fury.remains < 3 & chi > 4 || chi.max - chi <= 1 & energy.time_to_max < 2 ) || buff.chi_energy.stack > 10 & fight_remains < 7",
								["action"] = "spinning_crane_kick",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "combo_strike & ( talent.serenity.enabled & cooldown.serenity.remains < 3 || cooldown.rising_sun_kick.remains > 1 & cooldown.fists_of_fury.remains > 1 || cooldown.rising_sun_kick.remains < 3 & cooldown.fists_of_fury.remains > 3 & chi > 2 || cooldown.rising_sun_kick.remains > 3 & cooldown.fists_of_fury.remains < 3 & chi > 3 || chi > 5 || buff.bok_proc.up )",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["criteria"] = "combo_strike & chi.max - chi >= 2",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1",
								["action"] = "arcane_torrent",
							}, -- [17]
							{
								["interrupt"] = "1",
								["action"] = "flying_serpent_kick",
								["enabled"] = true,
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "combo_strike & cooldown.fists_of_fury.remains < 3 & chi = 2 & prev_gcd.1.tiger_palm & energy.time_to_50 < 1",
								["cycle_targets"] = 1,
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "combo_strike & energy.time_to_max < 2 & ( chi.max - chi <= 1 || prev_gcd.1.tiger_palm )",
								["cycle_targets"] = 1,
							}, -- [20]
						},
						["cd_sef"] = {
							{
								["enabled"] = true,
								["criteria"] = "! variable.hold_xuen & ( cooldown.rising_sun_kick.remains < 2 || ! covenant.kyrian ) & ( ! covenant.necrolord || cooldown.bonedust_brew.remains < 2 ) || fight_remains < 25",
								["action"] = "invoke_xuen",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "fight_remains > ( 180 - runeforge.fatal_touch.enabled * 120 ) || buff.storm_earth_and_fire.down & pet.xuen_the_white_tiger.active & ( ! covenant.necrolord || buff.bonedust_brew.up ) || ( cooldown.invoke_xuen_the_white_tiger.remains > fight_remains ) & buff.bonedust_brew.up || boss & fight_remains < 10",
								["action"] = "touch_of_death",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( raid_event.adds.in > 45 || raid_event.adds.up ) & cooldown.rising_sun_kick.remains < execute_time & cooldown.invoke_xuen_the_white_tiger.remains > ( 20 + 20 * runeforge.invokers_delight.enabled ) || boss & fight_remains < 35",
								["action"] = "weapons_of_order",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ( raid_event.adds.in > 10 || raid_event.adds.up )",
								["action"] = "faeline_stomp",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 30 || raid_event.adds.up",
								["action"] = "fallen_order",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "chi >= 2 & fight_remains > 60 & ( cooldown.storm_earth_and_fire.charges > 0 || cooldown.storm_earth_and_fire.remains > 10 ) & ( pet.xuen_the_white_tiger.active || cooldown.invoke_xuen_the_white_tiger.remains > 10 || variable.hold_xuen ) || ( chi >= 2 & fight_remains <= 60 & ( pet.xuen_the_White_tiger.active || cooldown.invoke_xuen_the_white_tiger.remains > fight_remains ) & ( cooldown.storm_earth_and_fire.charges > 0 || cooldown.storm_earth_and_fire.remains > fight_remains || buff.storm_earth_and_fire.up ) ) || fight_remains < 15",
								["action"] = "bonedust_brew",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "conduit.coordinated_offensive.enabled",
								["action"] = "storm_earth_and_fire_fixate",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.storm_earth_and_fire.charges = 2 || fight_remains < 20 || ( raid_event.adds.remains > 15 || ( ! covenant.kyrian & ! covenant.necrolord ) & ( ( raid_event.adds.in > cooldown.storm_earth_and_fire.full_recharge_time || ! raid_event.adds.exists ) & ( cooldown.invoke_xuen_the_white_tiger.remains > cooldown.storm_earth_and_fire.full_recharge_time || variable.hold_xuen ) ) & cooldown.fists_of_fury.remains <= 9 & chi >= 2 & cooldown.whirling_dragon_punch.remains <= 12 )",
								["action"] = "storm_earth_and_fire",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "covenant.kyrian & ( buff.weapons_of_order.up || ( fight_remains < cooldown.weapons_of_order.remains || cooldown.weapons_of_order.remains > cooldown.storm_earth_and_fire.full_recharge_time ) & cooldown.fists_of_fury.remains <= 9 & chi >= 2 & cooldown.whirling_dragon_punch.remains <= 12 )",
								["action"] = "storm_earth_and_fire",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "covenant.necrolord & debuff.bonedust_brew_debuff.up & ( pet.xuen_the_white_tiger.active || variable.hold_xuen || cooldown.invoke_xuen_the_white_tiger.remains > cooldown.storm_earth_and_fire.full_recharge_time || cooldown.invoke_xuen_the_white_tiger.remains > 30 )",
								["action"] = "storm_earth_and_fire",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "pet.xuen_the_white_tiger.active || boss & fight_remains < 20",
								["action"] = "inscrutable_quantum_device",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "pet.xuen_the_white_tiger.active || boss & fight_remains < 20",
								["action"] = "wrathstone",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "pet.xuen_the_white_tiger.active || boss & fight_remains < 20",
								["action"] = "gladiators_badge",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! variable.xuen_on_use_trinket || cooldown.invoke_xuen_the_white_tiger.remains > 20 & pet.xuen_the_white_tiger.remains < 20 || variable.hold_xuen",
								["name"] = "dreadfire_vessel",
								["action"] = "dreadfire_vessel",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "pet.xuen_the_white_tiger.active || boss & fight_remains < 20 || ! runeforge.invokers_delight.enabled",
								["name"] = "shadowgrasp_totem",
								["action"] = "shadowgrasp_totem",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "! variable.xuen_on_use_trinket || cooldown.invoke_xuen_the_white_tiger.remains > 20 || variable.hold_xuen",
								["action"] = "use_items",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "fight_remains > 90 || pet.xuen_the_white_tiger.active || variable.hold_xuen || boss & fight_remains < 16",
								["action"] = "touch_of_karma",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.invoke_xuen_the_white_tiger.remains > 30 || variable.hold_xuen || boss & fight_remains < 20",
								["action"] = "blood_fury",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.invoke_xuen_the_white_tiger.remains > 30 || variable.hold_xuen || boss & fight_remains < 15",
								["action"] = "berserking",
							}, -- [19]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.invoke_xuen_the_white_tiger.remains > 30 || variable.hold_xuen || boss & fight_remains < 10",
								["action"] = "fireblood",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.invoke_xuen_the_white_tiger.remains > 30 || variable.hold_xuen || boss & fight_remains < 20",
								["action"] = "ancestral_call",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "buff.storm_earth_and_fire.down",
								["action"] = "bag_of_tricks",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.pustule_eruption.enabled & buff.storm_earth_and_fire.down & debuff.bonedust_brew_debuff.down & buff.bonedust_brew.down",
								["action"] = "fleshcraft",
							}, -- [24]
						},
						["default"] = {
							{
								["action"] = "spear_hand_strike",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "cooldown.invoke_xuen_the_white_tiger.remains > fight_remains || fight_remains - cooldown.invoke_xuen_the_white_tiger.remains < 120 & ( ( talent.serenity.enabled & fight_remains > cooldown.serenity.remains & cooldown.serenity.remains > 10 ) || ( cooldown.storm_earth_and_fire.full_recharge_time < fight_remains & cooldown.storm_earth_and_fire.full_recharge_time > 15 ) || ( cooldown.storm_earth_and_fire.charges = 0 & cooldown.storm_earth_and_fire.remains < fight_remains ) )",
								["var_name"] = "hold_xuen",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( buff.serenity.up || buff.storm_earth_and_fire.up ) & pet.xuen_the_white_tiger.active || boss & fight_remains <= 60",
								["action"] = "potion",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "buff.serenity.up",
								["list_name"] = "serenity",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "buff.weapons_of_order.up",
								["list_name"] = "weapons_of_order",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "time < 4 & chi < 5 & ! pet.xuen_the_white_tiger.active",
								["list_name"] = "opener",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "fist_of_the_white_tiger",
								["criteria"] = "chi.max - chi >= 3 & ( energy.time_to_max < 1 || energy.time_to_max < 4 & cooldown.fists_of_fury.remains < 1.5 || cooldown.weapons_of_order.remains < 2 ) & ! debuff.bonedust_brew_debuff.up",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1 & ( energy.time_to_max < 1 || cooldown.serenity.remains < 2 || energy.time_to_max < 4 & cooldown.fists_of_fury.remains < 1.5 || cooldown.weapons_of_order.remains < 2 ) & ! buff.bonedust_brew.up",
								["action"] = "expel_harm",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["criteria"] = "combo_strike & chi.max - chi >= 2 & ( energy.time_to_max < 1 || cooldown.serenity.remains < 2 || energy.time_to_max < 4 & cooldown.fists_of_fury.remains < 1.5 || cooldown.weapons_of_order.remains < 2 ) & ! debuff.bonedust_brew_debuff.up",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "! talent.serenity.enabled",
								["list_name"] = "cd_sef",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "talent.serenity.enabled",
								["list_name"] = "cd_serenity",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies < 3",
								["list_name"] = "st",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies >= 3",
								["list_name"] = "aoe",
							}, -- [13]
						},
						["precombat"] = {
							{
								["action"] = "bottled_flayedwing_toxin",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "equipped.inscrutable_quantum_device || equipped.gladiators_badge || equipped.wrathstone || equipped.overcharged_anima_battery || equipped.shadowgrasp_totem",
								["var_name"] = "xuen_on_use_trinket",
							}, -- [2]
							{
								["action"] = "fleshcraft",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! talent.serenity.enabled || ! talent.fist_of_the_white_tiger.enabled",
								["action"] = "chi_burst",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! talent.energizing_elixer.enabled",
								["action"] = "chi_wave",
							}, -- [5]
						},
						["aoe"] = {
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 2 & energy.time_to_max > 2 || chi.max - chi >= 4",
								["action"] = "energizing_elixir",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ( buff.dance_of_chiji.up || debuff.bonedust_brew_debuff.up )",
								["action"] = "spinning_crane_kick",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "energy.time_to_max > execute_time || chi.max - chi <= 1",
								["action"] = "fists_of_fury",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["criteria"] = "( talent.whirling_dragon_punch.enabled & cooldown.rising_sun_kick.duration > cooldown.whirling_dragon_punch.remains + 4 ) & ( cooldown.fists_of_fury.remains > 3 || chi >= 5 )",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.rushing_jade_wind.down",
								["action"] = "rushing_jade_wind",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1",
								["action"] = "expel_harm",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "fist_of_the_white_tiger",
								["criteria"] = "chi.max - chi >= 3",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 2",
								["action"] = "chi_burst",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.the_emperors_capacitor.stack > 19 & energy.time_to_max > execute_time - 1 & cooldown.fists_of_fury.remains > execute_time",
								["action"] = "crackling_jade_lightning",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["criteria"] = "chi.max - chi >= 2 & ( ! talent.hit_combo.enabled || combo_strike )",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1",
								["action"] = "arcane_torrent",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ( cooldown.bonedust_brew.remains > 2 || ! covenant.necrolord ) & ( chi >= 5 || cooldown.fists_of_fury.remains > 6 || cooldown.fists_of_fury.remains > 3 & chi >= 3 & energy.time_to_50 < 1 || energy.time_to_max <= ( 3 + 3 * cooldown.fists_of_fury.remains < 5 ) || buff.storm_earth_and_fire.up )",
								["action"] = "spinning_crane_kick",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike",
								["action"] = "chi_wave",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "flying_serpent_kick",
								["criteria"] = "buff.bok_proc.down",
								["interrupt"] = "1",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "combo_strike & ( buff.bok_proc.up || talent.hit_combo.enabled & prev_gcd.1.tiger_palm & chi = 2 & cooldown.fists_of_fury.remains < 3 || chi.max - chi <= 1 & prev_gcd.1.spinning_crane_kick & energy.time_to_max < 3 )",
								["cycle_targets"] = 1,
							}, -- [16]
						},
					},
					["version"] = 20211227,
					["warnings"] = "WARNING:  The import for 'weapons_of_order' required some automated changes.\nLine 2: Converted 'talent.X' to 'talent.X.enabled' at EOL (1x).\nLine 3: Converted 'talent.X' to 'talent.X.enabled' at EOL (1x).\nLine 20: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nWARNING:  The import for 'serenity' required some automated changes.\nLine 10: Converted 'talent.X' to 'talent.X.enabled' at EOL (1x).\n\nWARNING:  The import for 'cd_serenity' required some automated changes.\nLine 9: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 14: Converted 'runeforge.X' to 'runeforge.X.enabled' at EOL (1x).\nLine 21: Converted 'soulbind.X' to 'soulbind.X.enabled' (1x).\n\nWARNING:  The import for 'st' required some automated changes.\nLine 4: Converted 'soulbind.X' to 'soulbind.X.enabled' (1x).\nLine 5: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 7: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 15: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nWARNING:  The import for 'cd_sef' required some automated changes.\nLine 2: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 3: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 15: Converted 'runeforge.X' to 'runeforge.X.enabled' at EOL (1x).\nLine 24: Converted 'soulbind.X' to 'soulbind.X.enabled' (1x).\n\nWARNING:  The import for 'default' required some automated changes.\nLine 2: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 10: Converted 'talent.X' to 'talent.X.enabled' at EOL (1x).\nLine 11: Converted 'talent.X' to 'talent.X.enabled' at EOL (1x).\n\nWARNING:  The import for 'aoe' required some automated changes.\nLine 5: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 11: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 16: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nImported 9 action lists.\n",
					["author"] = "SimC",
					["profile"] = "## Windwalker Monk\n## December 27, 2021\n\n## Charges:\n## - Tweak Fists of Fury interrupt logic.\n## - Tweak Spinning Crane Kick logic.\n## - Add bossfight checks to many CD entries.\n## - Add in-combat Fleshcraft.\n\n## Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat+=/bottled_flayedwing_toxin\nactions.precombat+=/variable,name=xuen_on_use_trinket,op=set,value=equipped.inscrutable_quantum_device||equipped.gladiators_badge||equipped.wrathstone||equipped.overcharged_anima_battery||equipped.shadowgrasp_totem\nactions.precombat+=/fleshcraft\nactions.precombat+=/chi_burst,if=!talent.serenity.enabled||!talent.fist_of_the_white_tiger.enabled\nactions.precombat+=/chi_wave,if=!talent.energizing_elixer.enabled\n\n## Executed every time the actor is available.\nactions=spear_hand_strike\nactions+=/variable,name=hold_xuen,op=set,value=cooldown.invoke_xuen_the_white_tiger.remains>fight_remains||fight_remains-cooldown.invoke_xuen_the_white_tiger.remains<120&((talent.serenity&fight_remains>cooldown.serenity.remains&cooldown.serenity.remains>10)||(cooldown.storm_earth_and_fire.full_recharge_time<fight_remains&cooldown.storm_earth_and_fire.full_recharge_time>15)||(cooldown.storm_earth_and_fire.charges=0&cooldown.storm_earth_and_fire.remains<fight_remains))\nactions+=/potion,if=(buff.serenity.up||buff.storm_earth_and_fire.up)&pet.xuen_the_white_tiger.active||boss&fight_remains<=60\nactions+=/call_action_list,name=serenity,strict=1,if=buff.serenity.up\nactions+=/call_action_list,name=weapons_of_order,strict=1,if=buff.weapons_of_order.up\nactions+=/call_action_list,name=opener,strict=1,if=time<4&chi<5&!pet.xuen_the_white_tiger.active\nactions+=/fist_of_the_white_tiger,cycle_targets=1,if=chi.max-chi>=3&(energy.time_to_max<1||energy.time_to_max<4&cooldown.fists_of_fury.remains<1.5||cooldown.weapons_of_order.remains<2)&!debuff.bonedust_brew_debuff.up\nactions+=/expel_harm,if=chi.max-chi>=1&(energy.time_to_max<1||cooldown.serenity.remains<2||energy.time_to_max<4&cooldown.fists_of_fury.remains<1.5||cooldown.weapons_of_order.remains<2)&!buff.bonedust_brew.up\nactions+=/tiger_palm,cycle_targets=1,if=combo_strike&chi.max-chi>=2&(energy.time_to_max<1||cooldown.serenity.remains<2||energy.time_to_max<4&cooldown.fists_of_fury.remains<1.5||cooldown.weapons_of_order.remains<2)&!debuff.bonedust_brew_debuff.up\nactions+=/call_action_list,name=cd_sef,strict=1,if=!talent.serenity\nactions+=/call_action_list,name=cd_serenity,strict=1,if=talent.serenity\nactions+=/call_action_list,name=st,strict=1,if=active_enemies<3\nactions+=/call_action_list,name=aoe,strict=1,if=active_enemies>=3\n\nactions.aoe=whirling_dragon_punch\nactions.aoe+=/energizing_elixir,if=chi.max-chi>=2&energy.time_to_max>2||chi.max-chi>=4\nactions.aoe+=/spinning_crane_kick,if=combo_strike&(buff.dance_of_chiji.up||debuff.bonedust_brew_debuff.up)\nactions.aoe+=/fists_of_fury,if=energy.time_to_max>execute_time||chi.max-chi<=1\nactions.aoe+=/rising_sun_kick,cycle_targets=1,if=(talent.whirling_dragon_punch&cooldown.rising_sun_kick.duration>cooldown.whirling_dragon_punch.remains+4)&(cooldown.fists_of_fury.remains>3||chi>=5)\nactions.aoe+=/rushing_jade_wind,if=buff.rushing_jade_wind.down\nactions.aoe+=/expel_harm,if=chi.max-chi>=1\nactions.aoe+=/fist_of_the_white_tiger,cycle_targets=1,if=chi.max-chi>=3\nactions.aoe+=/chi_burst,if=chi.max-chi>=2\nactions.aoe+=/crackling_jade_lightning,if=buff.the_emperors_capacitor.stack>19&energy.time_to_max>execute_time-1&cooldown.fists_of_fury.remains>execute_time\nactions.aoe+=/tiger_palm,cycle_targets=1,if=chi.max-chi>=2&(!talent.hit_combo||combo_strike)\nactions.aoe+=/arcane_torrent,if=chi.max-chi>=1\nactions.aoe+=/spinning_crane_kick,if=combo_strike&(cooldown.bonedust_brew.remains>2||!covenant.necrolord)&(chi>=5||cooldown.fists_of_fury.remains>6||cooldown.fists_of_fury.remains>3&chi>=3&energy.time_to_50<1||energy.time_to_max<=(3+3*cooldown.fists_of_fury.remains<5)||buff.storm_earth_and_fire.up)\nactions.aoe+=/chi_wave,if=combo_strike\nactions.aoe+=/flying_serpent_kick,if=buff.bok_proc.down,interrupt=1\nactions.aoe+=/blackout_kick,cycle_targets=1,if=combo_strike&(buff.bok_proc.up||talent.hit_combo&prev_gcd.1.tiger_palm&chi=2&cooldown.fists_of_fury.remains<3||chi.max-chi<=1&prev_gcd.1.spinning_crane_kick&energy.time_to_max<3)\n\nactions.cd_sef=invoke_xuen_the_white_tiger,if=!variable.hold_xuen&(cooldown.rising_sun_kick.remains<2||!covenant.kyrian)&(!covenant.necrolord||cooldown.bonedust_brew.remains<2)||fight_remains<25\nactions.cd_sef+=/touch_of_death,if=fight_remains>(180-runeforge.fatal_touch*120)||buff.storm_earth_and_fire.down&pet.xuen_the_white_tiger.active&(!covenant.necrolord||buff.bonedust_brew.up)||(cooldown.invoke_xuen_the_white_tiger.remains>fight_remains)&buff.bonedust_brew.up||boss&fight_remains<10\nactions.cd_sef+=/weapons_of_order,if=(raid_event.adds.in>45||raid_event.adds.up)&cooldown.rising_sun_kick.remains<execute_time&cooldown.invoke_xuen_the_white_tiger.remains>(20+20*runeforge.invokers_delight)||boss&fight_remains<35\nactions.cd_sef+=/faeline_stomp,if=combo_strike&(raid_event.adds.in>10||raid_event.adds.up)\nactions.cd_sef+=/fallen_order,if=raid_event.adds.in>30||raid_event.adds.up\nactions.cd_sef+=/bonedust_brew,if=chi>=2&fight_remains>60&(cooldown.storm_earth_and_fire.charges>0||cooldown.storm_earth_and_fire.remains>10)&(pet.xuen_the_white_tiger.active||cooldown.invoke_xuen_the_white_tiger.remains>10||variable.hold_xuen)||(chi>=2&fight_remains<=60&(pet.xuen_the_White_tiger.active||cooldown.invoke_xuen_the_white_tiger.remains>fight_remains)&(cooldown.storm_earth_and_fire.charges>0||cooldown.storm_earth_and_fire.remains>fight_remains||buff.storm_earth_and_fire.up))||fight_remains<15\nactions.cd_sef+=/storm_earth_and_fire_fixate,if=conduit.coordinated_offensive.enabled\nactions.cd_sef+=/storm_earth_and_fire,if=cooldown.storm_earth_and_fire.charges=2||fight_remains<20||(raid_event.adds.remains>15||(!covenant.kyrian&!covenant.necrolord)&((raid_event.adds.in>cooldown.storm_earth_and_fire.full_recharge_time||!raid_event.adds.exists)&(cooldown.invoke_xuen_the_white_tiger.remains>cooldown.storm_earth_and_fire.full_recharge_time||variable.hold_xuen))&cooldown.fists_of_fury.remains<=9&chi>=2&cooldown.whirling_dragon_punch.remains<=12)\nactions.cd_sef+=/storm_earth_and_fire,if=covenant.kyrian&(buff.weapons_of_order.up||(fight_remains<cooldown.weapons_of_order.remains||cooldown.weapons_of_order.remains>cooldown.storm_earth_and_fire.full_recharge_time)&cooldown.fists_of_fury.remains<=9&chi>=2&cooldown.whirling_dragon_punch.remains<=12)\nactions.cd_sef+=/storm_earth_and_fire,if=covenant.necrolord&debuff.bonedust_brew_debuff.up&(pet.xuen_the_white_tiger.active||variable.hold_xuen||cooldown.invoke_xuen_the_white_tiger.remains>cooldown.storm_earth_and_fire.full_recharge_time||cooldown.invoke_xuen_the_white_tiger.remains>30)\nactions.cd_sef+=/inscrutable_quantum_device,if=pet.xuen_the_white_tiger.active||boss&fight_remains<20\nactions.cd_sef+=/wrathstone,if=pet.xuen_the_white_tiger.active||boss&fight_remains<20\nactions.cd_sef+=/gladiators_badge,if=pet.xuen_the_white_tiger.active||boss&fight_remains<20\nactions.cd_sef+=/use_item,name=dreadfire_vessel,if=!variable.xuen_on_use_trinket||cooldown.invoke_xuen_the_white_tiger.remains>20&pet.xuen_the_white_tiger.remains<20||variable.hold_xuen\nactions.cd_sef+=/use_item,name=shadowgrasp_totem,if=pet.xuen_the_white_tiger.active||boss&fight_remains<20||!runeforge.invokers_delight\nactions.cd_sef+=/use_items,if=!variable.xuen_on_use_trinket||cooldown.invoke_xuen_the_white_tiger.remains>20||variable.hold_xuen\nactions.cd_sef+=/touch_of_karma,if=fight_remains>90||pet.xuen_the_white_tiger.active||variable.hold_xuen||boss&fight_remains<16\nactions.cd_sef+=/blood_fury,if=cooldown.invoke_xuen_the_white_tiger.remains>30||variable.hold_xuen||boss&fight_remains<20\nactions.cd_sef+=/berserking,if=cooldown.invoke_xuen_the_white_tiger.remains>30||variable.hold_xuen||boss&fight_remains<15\nactions.cd_sef+=/lights_judgment\nactions.cd_sef+=/fireblood,if=cooldown.invoke_xuen_the_white_tiger.remains>30||variable.hold_xuen||boss&fight_remains<10\nactions.cd_sef+=/ancestral_call,if=cooldown.invoke_xuen_the_white_tiger.remains>30||variable.hold_xuen||boss&fight_remains<20\nactions.cd_sef+=/bag_of_tricks,if=buff.storm_earth_and_fire.down\nactions.cd_sef+=/fleshcraft,if=soulbind.pustule_eruption&buff.storm_earth_and_fire.down&debuff.bonedust_brew_debuff.down&buff.bonedust_brew.down\n\nactions.cd_serenity=variable,name=serenity_burst,op=set,value=cooldown.serenity.remains<1||pet.xuen_the_white_tiger.active&cooldown.serenity.remains>30||boss&fight_remains<20\nactions.cd_serenity+=/invoke_xuen_the_white_tiger,if=!variable.hold_xuen||boss&fight_remains<25\nactions.cd_serenity+=/blood_fury,if=variable.serenity_burst\nactions.cd_serenity+=/berserking,if=variable.serenity_burst\nactions.cd_serenity+=/lights_judgment\nactions.cd_serenity+=/fireblood,if=variable.serenity_burst\nactions.cd_serenity+=/ancestral_call,if=variable.serenity_burst\nactions.cd_serenity+=/bag_of_tricks,if=variable.serenity_burst\nactions.cd_serenity+=/touch_of_death,if=fight_remains>(180-runeforge.fatal_touch*120)||pet.xuen_the_white_tiger.active&(!covenant.necrolord||buff.bonedust_brew.up)||(cooldown.invoke_xuen_the_white_tiger.remains>fight_remains)&buff.bonedust_brew.up||boss&fight_remains<10\nactions.cd_serenity+=/weapons_of_order,if=cooldown.rising_sun_kick.remains<execute_time\nactions.cd_serenity+=/inscrutable_quantum_device,if=variable.serenity_burst\nactions.cd_serenity+=/wrathstone,if=variable.serenity_burst\nactions.cd_serenity+=/gladiators_badge,if=variable.serenity_burst\nactions.cd_serenity+=/use_item,name=shadowgrasp_totem,if=pet.xuen_the_white_tiger.active||boss&fight_remains<20||!runeforge.invokers_delight\nactions.cd_serenity+=/use_items,if=!variable.xuen_on_use_trinket||cooldown.invoke_xuen_the_white_tiger.remains>20||variable.hold_xuen\nactions.cd_serenity+=/faeline_stomp\nactions.cd_serenity+=/fallen_order\nactions.cd_serenity+=/bonedust_brew,if=boss&fight_remains<15||(chi>=2&(fight_remains>60&((cooldown.serenity.remains>10||buff.serenity.up||cooldown.serenity.up)&(pet.xuen_the_white_tiger.active||cooldown.invoke_xuen_the_white_tiger.remains>10||variable.hold_xuen)))||(fight_remains<=60&(pet.xuen_the_White_tiger.active||cooldown.invoke_xuen_the_white_tiger.remains>fight_remains)))\nactions.cd_serenity+=/serenity,if=cooldown.rising_sun_kick.remains<2||boss&fight_remains<15\nactions.cd_serenity+=/bag_of_tricks\nactions.cd_serenity+=/fleshcraft,if=soulbind.pustule_eruption&buff.serenity.down&debuff.bonedust_brew_debuff.down&buff.bonedust_brew.down\n\nactions.opener=fist_of_the_white_tiger,cycle_tarrgets=1,if=chi.max-chi>=3\nactions.opener+=/expel_harm,if=talent.chi_burst.enabled&chi.max-chi>=3\nactions.opener+=/tiger_palm,cycle_targets=1,if=combo_strike&chi.max-chi>=2\nactions.opener+=/chi_wave,if=chi.max-chi=2\nactions.opener+=/expel_harm\nactions.opener+=/tiger_palm,cycle_targets=1,if=chi.max-chi>=2\n\nactions.serenity=fists_of_fury,if=buff.serenity.remains<1\nactions.serenity+=/spinning_crane_kick,if=combo_strike&(active_enemies>=3||active_enemies>1&!cooldown.rising_sun_kick.up)\nactions.serenity+=/rising_sun_kick,cycle_targets=1,if=combo_strike\nactions.serenity+=/fists_of_fury,if=active_enemies>=3\nactions.serenity+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up\nactions.serenity+=/blackout_kick,cycle_targets=1,if=combo_strike&buff.weapons_of_order.up&cooldown.rising_sun_kick.remains>2\nactions.serenity+=/fists_of_fury,interrupt_if=buff.serenity.up&cooldown.rising_sun_kick.ready\nactions.serenity+=/spinning_crane_kick,if=combo_strike&debuff.bonedust_brew_debuff.up\nactions.serenity+=/fist_of_the_white_tiger,cycle_targets=1,if=chi<3\nactions.serenity+=/blackout_kick,cycle_targets=1,if=combo_strike||!talent.hit_combo\nactions.serenity+=/spinning_crane_kick\n\nactions.st=whirling_dragon_punch,if=raid_event.adds.in>cooldown.whirling_dragon_punch.duration*0.8||raid_event.adds.up\nactions.st+=/energizing_elixir,if=chi.max-chi>=2&energy.time_to_max>3||chi.max-chi>=4&(energy.time_to_max>2||!prev_gcd.1.tiger_palm)\nactions.st+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up&(raid_event.adds.in>buff.dance_of_chiji.remains-2||raid_event.adds.up)\nactions.st+=/fleshcraft,interrupt_immediate=1,interrupt_if=buff.volatile_solvent_humanoid.up||energy.time_to_max<3||cooldown.rising_sun_kick.remains<2||cooldown.fists_of_fury.remains<2,if=soulbind.volatile_solvent&buff.storm_earth_and_fire.down&debuff.bonedust_brew_debuff.down\nactions.st+=/rising_sun_kick,cycle_targets=1,if=cooldown.serenity.remains>1||!talent.serenity&(cooldown.weapons_of_order.remains>4||!covenant.kyrian)\nactions.st+=/fists_of_fury,if=(raid_event.adds.in>cooldown.fists_of_fury.duration*0.8||raid_event.adds.up)&(energy.time_to_max>execute_time-1||chi.max-chi<=1||buff.storm_earth_and_fire.remains<execute_time+1)||fight_remains<execute_time+1||debuff.bonedust_brew_debuff.up\nactions.st+=/crackling_jade_lightning,if=buff.the_emperors_capacitor.stack>19&energy.time_to_max>execute_time-1&cooldown.rising_sun_kick.remains>execute_time||buff.the_emperors_capacitor.stack>14&(cooldown.serenity.remains<5&talent.serenity||cooldown.weapons_of_order.remains<5&covenant.kyrian||fight_remains<5)\nactions.st+=/rushing_jade_wind,if=buff.rushing_jade_wind.down&active_enemies>1\nactions.st+=/fist_of_the_white_tiger,cycle_targets=1,if=chi<3\nactions.st+=/expel_harm,if=chi.max-chi>=1\nactions.st+=/chi_burst,if=chi.max-chi>=1&active_enemies=1&raid_event.adds.in>20||chi.max-chi>=2&active_enemies>=2\nactions.st+=/chi_wave\nactions.st+=/tiger_palm,cycle_targets=1,if=combo_strike&chi.max-chi>=2&buff.storm_earth_and_fire.down\nactions.st+=/spinning_crane_kick,if=buff.chi_energy.stack>30-5*active_enemies&buff.storm_earth_and_fire.down&(cooldown.rising_sun_kick.remains>2&cooldown.fists_of_fury.remains>2||cooldown.rising_sun_kick.remains<3&cooldown.fists_of_fury.remains>3&chi>3||cooldown.rising_sun_kick.remains>3&cooldown.fists_of_fury.remains<3&chi>4||chi.max-chi<=1&energy.time_to_max<2)||buff.chi_energy.stack>10&fight_remains<7\nactions.st+=/blackout_kick,cycle_targets=1,if=combo_strike&(talent.serenity&cooldown.serenity.remains<3||cooldown.rising_sun_kick.remains>1&cooldown.fists_of_fury.remains>1||cooldown.rising_sun_kick.remains<3&cooldown.fists_of_fury.remains>3&chi>2||cooldown.rising_sun_kick.remains>3&cooldown.fists_of_fury.remains<3&chi>3||chi>5||buff.bok_proc.up)\nactions.st+=/tiger_palm,cycle_targets=1,if=combo_strike&chi.max-chi>=2\nactions.st+=/arcane_torrent,if=chi.max-chi>=1\nactions.st+=/flying_serpent_kick,interrupt=1\nactions.st+=/blackout_kick,cycle_targets=1,if=combo_strike&cooldown.fists_of_fury.remains<3&chi=2&prev_gcd.1.tiger_palm&energy.time_to_50<1\nactions.st+=/blackout_kick,cycle_targets=1,if=combo_strike&energy.time_to_max<2&(chi.max-chi<=1||prev_gcd.1.tiger_palm)\n\nactions.weapons_of_order=variable,name=blackout_kick_needed,op=set,value=buff.weapons_of_order_ww.remains&(cooldown.rising_sun_kick.remains>buff.weapons_of_order_ww.remains&buff.weapons_of_order_ww.remains<2.1||cooldown.rising_sun_kick.remains-buff.weapons_of_order_ww.remains>1.9&buff.weapons_of_order_ww.remains<4.1||buff.bloodlust.up&buff.invokers_delight.up&buff.invokers_delight.remains<buff.weapons_of_order_ww.remains)\nactions.weapons_of_order+=/call_action_list,name=cd_sef,strict=1,if=!talent.serenity\nactions.weapons_of_order+=/call_action_list,name=cd_serenity,strict=1,if=talent.serenity\nactions.weapons_of_order+=/energizing_elixir,if=chi.max-chi>=2&energy.time_to_max>3\nactions.weapons_of_order+=/rising_sun_kick,cycle_targets=1\nactions.weapons_of_order+=/fists_of_fury,if=active_enemies>=2&buff.weapons_of_order_ww.remains<1\nactions.weapons_of_order+=/whirling_dragon_punch,if=active_enemies>=2\nactions.weapons_of_order+=/spinning_crane_kick,if=combo_strike&active_enemies>=3&buff.weapons_of_order_ww.up\nactions.weapons_of_order+=/blackout_kick,cycle_targets=1,if=combo_strike&active_enemies<=2&variable.blackout_kick_needed\nactions.weapons_of_order+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up\nactions.weapons_of_order+=/expel_harm,if=chi=0&buff.weapons_of_order_ww.remains<4\nactions.weapons_of_order+=/fist_of_the_white_tiger,cycle_targets=1,if=chi=0&buff.weapons_of_order_ww.remains<4\nactions.weapons_of_order+=/whirling_dragon_punch\nactions.weapons_of_order+=/tiger_palm,cycle_targets=1,if=chi=0&buff.weapons_of_order_ww.remains<4\nactions.weapons_of_order+=/fists_of_fury,interrupt_if=buff.weapons_of_order_ww.up,if=buff.storm_earth_and_fire.up&raid_event.adds.in>cooldown.fists_of_fury.duration*0.6\nactions.weapons_of_order+=/spinning_crane_kick,if=buff.chi_energy.stack>30-5*active_enemies\nactions.weapons_of_order+=/fist_of_the_white_tiger,cycle_targets=1,if=chi<3\nactions.weapons_of_order+=/expel_harm,if=chi.max-chi>=1\nactions.weapons_of_order+=/chi_burst,if=chi.max-chi>=(1+active_enemies>1)\nactions.weapons_of_order+=/tiger_palm,cycle_targets=1,if=(!talent.hit_combo||combo_strike)&chi.max-chi>=2\nactions.weapons_of_order+=/blackout_kick,cycle_targets=1,if=active_enemies<=3&chi>=3||buff.weapons_of_order_ww.up\nactions.weapons_of_order+=/chi_wave\nactions.weapons_of_order+=/flying_serpent_kick,interrupt=1",
				},
				["Brewmaster"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20210801,
					["author"] = "SimC",
					["desc"] = "Brewmaster Monk\nJuly 31, 2021\n\nChanges:\n- 9.1 includes Purifying Brew entries related to Invoke Niuzao that do not using spec settings.  Provide feedback on GitHub.\n- Disregard new target.cooldown.pause_action.remains conditions that don't have an in-game equivalent.\n- Make settings.ox_walker support using SCK on fewer than 3 enemies with conduit.walk_with_the_ox.",
					["lists"] = {
						["default"] = {
							{
								["action"] = "spear_hand_strike",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "settings.purify_for_celestial & ( time_to_max_charges < gcd.max || buff.purified_chi.up & buff.purified_chi.remains < 1.5 * gcd.max ) || cooldown.celestial_brew.remains < 2 * gcd.max & charges_fractional > 1.5",
								["action"] = "purifying_brew",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.purified_chi.up",
								["action"] = "celestial_brew",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 75 & incoming_damage_3s > health.max * ( 0.2 + ( 0.2 * group ) ) & buff.fortifying_brew.down",
								["action"] = "dampen_harm",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 50 & incoming_damage_3s > health.max * ( 0.2 + ( 0.2 * group ) ) & ( buff.dampen_harm.down )",
								["action"] = "fortifying_brew",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "target.debuff.casting.react",
								["action"] = "spear_hand_strike",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "debuff.razor_coral_debuff.down || debuff.conductive_ink_debuff.up & target.health.pct < 31 || time_to_die < 20",
								["name"] = "ashvanes_razor_coral",
								["action"] = "ashvanes_razor_coral",
							}, -- [7]
							{
								["enabled"] = true,
								["name"] = "dreadfire_vessel",
								["action"] = "dreadfire_vessel",
							}, -- [8]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die > 6 & cooldown.purifying_brew.charges_fractional < 2",
								["action"] = "invoke_niuzao",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "target.health.pct <= 15 || target.health.current < health.max",
								["action"] = "touch_of_death",
							}, -- [18]
							{
								["action"] = "weapons_of_order",
								["enabled"] = true,
							}, -- [19]
							{
								["action"] = "fallen_order",
								["enabled"] = true,
							}, -- [20]
							{
								["action"] = "bonedust_brew",
								["enabled"] = true,
							}, -- [21]
							{
								["enabled"] = true,
								["description"] = "Use configured purify_stagger_currhp from Brewmaster options.",
								["criteria"] = "settings.purify_stagger_currhp > 0 & group & stagger.pct >= settings.purify_stagger_currhp",
								["action"] = "purifying_brew",
							}, -- [22]
							{
								["enabled"] = true,
								["description"] = "Use configured purify_stagger_currhp from Brewmaster options.",
								["criteria"] = "settings.purify_stagger_currhp > 0 & solo & stagger.pct >= settings.purify_stagger_currhp * 0.5",
								["action"] = "purifying_brew",
							}, -- [23]
							{
								["enabled"] = true,
								["description"] = "Use configured purify_stagger_maxhp from Brewmaster options.",
								["criteria"] = "settings.purify_stagger_maxhp > 0 & group & stagger.pct >= settings.purify_stagger_maxhp",
								["action"] = "purifying_brew",
							}, -- [24]
							{
								["enabled"] = true,
								["description"] = "Use configured purify_stagger_maxhp from Brewmaster options.",
								["criteria"] = "settings.purify_stagger_maxhp > 0 & solo & stagger.pct >= settings.purify_stagger_maxhp * 0.5",
								["action"] = "purifying_brew",
							}, -- [25]
							{
								["enabled"] = true,
								["description"] = "Cast PB during the Niuzao window, but only if recently hit.",
								["criteria"] = "stagger.amounttototalpct >= 0.7 & ( cooldown.invoke_niuzao_the_black_ox.remains < 5 || buff.invoke_niuzao_the_black_ox.up )",
								["action"] = "purifying_brew",
							}, -- [26]
							{
								["enabled"] = true,
								["description"] = "Stagger % of 20 will kill you in 2.5 seconds without healing or purifying.  Used when purify_stagger_currhp and maxhp are disabled.",
								["criteria"] = "settings.purify_stagger_currhp = 0 & settings.purify_stagger_maxhp = 0 & group & stagger.pct > 20",
								["action"] = "purifying_brew",
							}, -- [27]
							{
								["enabled"] = true,
								["description"] = "Stagger % of 10 will kill you in 5 seconds without healing or purifying.  Used when purify_stagger_currhp and maxhp are disabled.",
								["criteria"] = "settings.purify_stagger_currhp = 0 & settings.purify_stagger_maxhp = 0 & solo & stagger.pct > 10",
								["action"] = "purifying_brew",
							}, -- [28]
							{
								["enabled"] = true,
								["description"] = "Dump PB charges towards the end of Niuzao: anything is better than nothing.",
								["criteria"] = "buff.invoke_niuzao_the_black_ox.up & buff.invoke_niuzao_the_black_ox.remains < 8",
								["action"] = "purifying_brew",
							}, -- [29]
							{
								["enabled"] = true,
								["description"] = "Avoid capping charges, but pool charges shortly before Niuzao comes up and allow dumping to avoid capping during Niuzao.",
								["criteria"] = "cooldown.purifying_brew.charges_fractional >= 1.8 & ( cooldown.invoke_niuzao_the_black_ox.remains > 10 || buff.invoke_niuzao_the_black_ox.up )",
								["action"] = "purifying_brew",
							}, -- [30]
							{
								["enabled"] = true,
								["description"] = "Black Ox Brew is currently used to either replenish brews based on less than half a brew charge available, or low energy to enable Keg Smash",
								["criteria"] = "cooldown.purifying_brew.charges_fractional < 0.5",
								["action"] = "black_ox_brew",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "( energy + ( energy.regen * cooldown.keg_smash.remains ) ) < 40 & buff.blackout_combo.down & cooldown.keg_smash.up",
								["action"] = "black_ox_brew",
							}, -- [32]
							{
								["enabled"] = true,
								["description"] = "Healing Elixir",
								["criteria"] = "health.pct < 5 * healing_sphere.count || ( healing_sphere.count >= 3 & health.pct < 50 )",
								["action"] = "expel_harm",
							}, -- [33]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 33",
								["action"] = "healing_elixir",
							}, -- [34]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.bonedust_brew.remains < 4 & soulbind.pustule_eruption.enabled",
								["action"] = "fleshcraft",
							}, -- [35]
							{
								["enabled"] = true,
								["description"] = "Offensively, the APL prioritizes KS on cleave, BoS else, with energy spenders and cds sorted below",
								["criteria"] = "spell_targets >= 2",
								["action"] = "keg_smash",
							}, -- [36]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets >= 2",
								["action"] = "faeline_stomp",
							}, -- [37]
							{
								["enabled"] = true,
								["description"] = "Cast KS at top prio during WoO buff.",
								["criteria"] = "buff.weapons_of_order.up",
								["action"] = "keg_smash",
							}, -- [38]
							{
								["enabled"] = true,
								["description"] = "Celestial Brew priority whenever it took significant damage and ironskin brew buff is missing (adjust the health.max coefficient according to intensity of damage taken), and to dump excess charges before BoB.",
								["criteria"] = "tanking & buff.blackout_combo.down & incoming_damage_2999ms > ( health.max * 0.05 + stagger.last_tick_damage_4 ) & buff.elusive_brawler.stack < 2",
								["action"] = "celestial_brew",
							}, -- [39]
							{
								["enabled"] = true,
								["criteria"] = "tanking & buff.purified_chi.up & ( buff.purified_chi.remains < 1.5 * gcd || cooldown.purifying_brew.remains > buff.purified_chi.remains )",
								["action"] = "celestial_brew",
							}, -- [40]
							{
								["action"] = "detox",
								["enabled"] = true,
							}, -- [41]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets >= 2 & buff.rushing_jade_wind.down",
								["action"] = "rushing_jade_wind",
							}, -- [42]
							{
								["enabled"] = true,
								["criteria"] = "talent.rushing_jade_wind.enabled & buff.blackout_combo.up & buff.rushing_jade_wind.up",
								["action"] = "tiger_palm",
							}, -- [43]
							{
								["enabled"] = true,
								["criteria"] = "buff.charred_passions.down & runeforge.charred_passions.equipped",
								["action"] = "breath_of_fire",
							}, -- [44]
							{
								["action"] = "blackout_kick",
								["enabled"] = true,
							}, -- [45]
							{
								["action"] = "keg_smash",
								["enabled"] = true,
							}, -- [46]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.faeline_stomp.remains > 2 & spell_targets >= 2",
								["action"] = "chi_burst",
							}, -- [47]
							{
								["action"] = "faeline_stomp",
								["enabled"] = true,
							}, -- [48]
							{
								["enabled"] = true,
								["criteria"] = "buff.gift_of_the_ox.stack >= 3",
								["action"] = "expel_harm",
							}, -- [49]
							{
								["action"] = "touch_of_death",
								["enabled"] = true,
							}, -- [50]
							{
								["enabled"] = true,
								["criteria"] = "buff.rushing_jade_wind.down",
								["action"] = "rushing_jade_wind",
							}, -- [51]
							{
								["enabled"] = true,
								["criteria"] = "buff.charred_passions.up",
								["action"] = "spinning_crane_kick",
							}, -- [52]
							{
								["enabled"] = true,
								["criteria"] = "dot.concentrated_flame.remains = 0",
								["action"] = "concentrated_flame",
							}, -- [53]
							{
								["enabled"] = true,
								["criteria"] = "buff.blackout_combo.down & ( buff.bloodlust.down || ( buff.bloodlust.up & dot.breath_of_fire_dot.refreshable ) )",
								["action"] = "breath_of_fire",
							}, -- [54]
							{
								["enabled"] = true,
								["criteria"] = "! essence.the_crucible_of_flame.major",
								["action"] = "heart_essence",
							}, -- [55]
							{
								["action"] = "chi_burst",
								["enabled"] = true,
							}, -- [56]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [57]
							{
								["action"] = "exploding_keg",
								["enabled"] = true,
							}, -- [58]
							{
								["enabled"] = true,
								["description"] = "Expel Harm has higher DPET than TP when you have at least 2 orbs.",
								["criteria"] = "buff.gift_of_the_ox.stack >= 2",
								["action"] = "expel_harm",
							}, -- [59]
							{
								["enabled"] = true,
								["description"] = "Cast SCK if enough enemies are around, or if WWWTO is enabled. This is a slight defensive loss over using TP but generally reduces sim variance more than anything else.",
								["criteria"] = "! runeforge.shaohaos_might.equipped & ( active_enemies >= 3 || settings.ox_walker & conduit.walk_with_the_ox.enabled ) & cooldown.keg_smash.remains > gcd & ( energy + ( energy.regen * ( cooldown.keg_smash.remains + execute_time ) ) ) >= 65 & ( ! talent.spitfire.enabled || ! runeforge.charred_passions.equipped )",
								["action"] = "spinning_crane_kick",
							}, -- [60]
							{
								["enabled"] = true,
								["criteria"] = "! talent.blackout_combo.enabled & cooldown.keg_smash.remains > gcd & ( energy + ( energy.regen * ( cooldown.keg_smash.remains + gcd ) ) ) >= 65",
								["action"] = "tiger_palm",
							}, -- [61]
							{
								["enabled"] = true,
								["criteria"] = "energy < 31",
								["action"] = "arcane_torrent",
							}, -- [62]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.volatile_solvent.enabled",
								["action"] = "fleshcraft",
							}, -- [63]
							{
								["action"] = "rushing_jade_wind",
								["enabled"] = true,
							}, -- [64]
						},
						["precombat"] = {
							{
								["action"] = "fleshcraft",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "bottled_flayedwing_toxin",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "fleshcraft",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "chi_burst",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [5]
						},
					},
					["version"] = 20210801,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 61: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nImported 2 action lists.\n",
					["profile"] = "## Brewmaster Monk\n## July 31, 2021\n\n## Changes:\n## - 9.1 includes Purifying Brew entries related to Invoke Niuzao that do not using spec settings.  Provide feedback on GitHub.\n## - Disregard new target.cooldown.pause_action.remains conditions that don't have an in-game equivalent.\n## - Make settings.ox_walker support using SCK on fewer than 3 enemies with conduit.walk_with_the_ox.\n\n## Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat+=/fleshcraft\nactions.precombat+=/bottled_flayedwing_toxin\nactions.precombat+=/fleshcraft\nactions.precombat+=/chi_burst\nactions.precombat+=/chi_wave\n\n## Executed every time the actor is available.\nactions=spear_hand_strike\n\nactions+=/purifying_brew,if=settings.purify_for_celestial&(time_to_max_charges<gcd.max||buff.purified_chi.up&buff.purified_chi.remains<1.5*gcd.max)||cooldown.celestial_brew.remains<2*gcd.max&charges_fractional>1.5\nactions+=/celestial_brew,if=buff.purified_chi.up\nactions+=/dampen_harm,if=health.pct<75&incoming_damage_3s>health.max*(0.2+(0.2*group))&buff.fortifying_brew.down\nactions+=/fortifying_brew,if=health.pct<50&incoming_damage_3s>health.max*(0.2+(0.2*group))&(buff.dampen_harm.down)\n\nactions+=/spear_hand_strike,if=target.debuff.casting.react\nactions+=/use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.down||debuff.conductive_ink_debuff.up&target.health.pct<31||time_to_die<20\nactions+=/use_item,name=dreadfire_vessel\nactions+=/use_items\nactions+=/potion\nactions+=/blood_fury\nactions+=/berserking\nactions+=/lights_judgment\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/bag_of_tricks\nactions+=/invoke_niuzao_the_black_ox,if=target.time_to_die>6&cooldown.purifying_brew.charges_fractional<2\nactions+=/touch_of_death,if=target.health.pct<=15||target.health.current<health.max\nactions+=/weapons_of_order\nactions+=/fallen_order\nactions+=/bonedust_brew\n\n# Use configured purify_stagger_currhp from Brewmaster options.\nactions+=/purifying_brew,if=settings.purify_stagger_currhp>0&group&stagger.pct>=settings.purify_stagger_currhp\n# Use configured purify_stagger_currhp from Brewmaster options.\nactions+=/purifying_brew,if=settings.purify_stagger_currhp>0&solo&stagger.pct>=settings.purify_stagger_currhp*0.5\n\n# Use configured purify_stagger_maxhp from Brewmaster options.\nactions+=/purifying_brew,if=settings.purify_stagger_maxhp>0&group&stagger.pct>=settings.purify_stagger_maxhp\n# Use configured purify_stagger_maxhp from Brewmaster options.\nactions+=/purifying_brew,if=settings.purify_stagger_maxhp>0&solo&stagger.pct>=settings.purify_stagger_maxhp*0.5\n\n# Cast PB during the Niuzao window, but only if recently hit.\nactions+=/purifying_brew,if=stagger.amounttototalpct>=0.7&(cooldown.invoke_niuzao_the_black_ox.remains<5||buff.invoke_niuzao_the_black_ox.up)\n\n# Stagger % of 20 will kill you in 2.5 seconds without healing or purifying.  Used when purify_stagger_currhp and maxhp are disabled.\nactions+=/purifying_brew,if=settings.purify_stagger_currhp=0&settings.purify_stagger_maxhp=0&group&stagger.pct>20\n# Stagger % of 10 will kill you in 5 seconds without healing or purifying.  Used when purify_stagger_currhp and maxhp are disabled.\nactions+=/purifying_brew,if=settings.purify_stagger_currhp=0&settings.purify_stagger_maxhp=0&solo&stagger.pct>10\n\n# Dump PB charges towards the end of Niuzao: anything is better than nothing.\nactions+=/purifying_brew,if=buff.invoke_niuzao_the_black_ox.up&buff.invoke_niuzao_the_black_ox.remains<8\n\n# Avoid capping charges, but pool charges shortly before Niuzao comes up and allow dumping to avoid capping during Niuzao.\nactions+=/purifying_brew,if=cooldown.purifying_brew.charges_fractional>=1.8&(cooldown.invoke_niuzao_the_black_ox.remains>10||buff.invoke_niuzao_the_black_ox.up)\n\n# Black Ox Brew is currently used to either replenish brews based on less than half a brew charge available, or low energy to enable Keg Smash\nactions+=/black_ox_brew,if=cooldown.purifying_brew.charges_fractional<0.5\nactions+=/black_ox_brew,if=(energy+(energy.regen*cooldown.keg_smash.remains))<40&buff.blackout_combo.down&cooldown.keg_smash.up\n\n# Healing Elixir\nactions+=/expel_harm,if=health.pct<5*healing_sphere.count||(healing_sphere.count>=3&health.pct<50)\nactions+=/healing_elixir,if=health.pct<33\n\nactions+=/fleshcraft,if=cooldown.bonedust_brew.remains<4&soulbind.pustule_eruption.enabled\n\n# Offensively, the APL prioritizes KS on cleave, BoS else, with energy spenders and cds sorted below\nactions+=/keg_smash,if=spell_targets>=2\nactions+=/faeline_stomp,if=spell_targets>=2\n\n# Cast KS at top prio during WoO buff.\nactions+=/keg_smash,if=buff.weapons_of_order.up\n\n# Celestial Brew priority whenever it took significant damage and ironskin brew buff is missing (adjust the health.max coefficient according to intensity of damage taken), and to dump excess charges before BoB.\nactions+=/celestial_brew,if=tanking&buff.blackout_combo.down&incoming_damage_2999ms>(health.max*0.05+stagger.last_tick_damage_4)&buff.elusive_brawler.stack<2\nactions+=/celestial_brew,if=tanking&buff.purified_chi.up&(buff.purified_chi.remains<1.5*gcd||cooldown.purifying_brew.remains>buff.purified_chi.remains)\n\nactions+=/detox\n\nactions+=/rushing_jade_wind,if=spell_targets>=2&buff.rushing_jade_wind.down\nactions+=/tiger_palm,if=talent.rushing_jade_wind.enabled&buff.blackout_combo.up&buff.rushing_jade_wind.up\nactions+=/breath_of_fire,if=buff.charred_passions.down&runeforge.charred_passions.equipped\nactions+=/blackout_kick\nactions+=/keg_smash\nactions+=/chi_burst,if=cooldown.faeline_stomp.remains>2&spell_targets>=2\nactions+=/faeline_stomp\nactions+=/expel_harm,if=buff.gift_of_the_ox.stack>=3\nactions+=/touch_of_death\nactions+=/rushing_jade_wind,if=buff.rushing_jade_wind.down\nactions+=/spinning_crane_kick,if=buff.charred_passions.up\nactions+=/concentrated_flame,if=dot.concentrated_flame.remains=0\nactions+=/breath_of_fire,if=buff.blackout_combo.down&(buff.bloodlust.down||(buff.bloodlust.up&dot.breath_of_fire_dot.refreshable))\nactions+=/heart_essence,if=!essence.the_crucible_of_flame.major\nactions+=/chi_burst\nactions+=/chi_wave\nactions+=/exploding_keg\n# Expel Harm has higher DPET than TP when you have at least 2 orbs.\nactions+=/expel_harm,if=buff.gift_of_the_ox.stack>=2\n# Cast SCK if enough enemies are around, or if WWWTO is enabled. This is a slight defensive loss over using TP but generally reduces sim variance more than anything else.\nactions+=/spinning_crane_kick,if=!runeforge.shaohaos_might.equipped&(active_enemies>=3||settings.ox_walker&conduit.walk_with_the_ox.enabled)&cooldown.keg_smash.remains>gcd&(energy+(energy.regen*(cooldown.keg_smash.remains+execute_time)))>=65&(!talent.spitfire.enabled||!runeforge.charred_passions.equipped)\nactions+=/tiger_palm,if=!talent.blackout_combo&cooldown.keg_smash.remains>gcd&(energy+(energy.regen*(cooldown.keg_smash.remains+gcd)))>=65\nactions+=/arcane_torrent,if=energy<31\nactions+=/fleshcraft,if=soulbind.volatile_solvent.enabled\nactions+=/rushing_jade_wind",
					["spec"] = 268,
				},
			},
			["notifications"] = {
				["x"] = -37.23259353637695,
				["y"] = 407.5471496582031,
			},
			["iconStore"] = {
				["minimapPos"] = 181.6739141630484,
			},
		},
	},
}