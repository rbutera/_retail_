
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Badmanting - Draenor"] = "Default",
		["Ryugasm - Draenor"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["runOnce"] = {
				["resetPotionsToDefaults_20190717"] = true,
				["autoconvertDelaySweepToExtend_20190729"] = true,
				["resetGlobalCooldownSync_20210403"] = true,
				["autoconvertGlowsForCustomGlow_20190326"] = true,
				["resetRogueMfDOption_20200226"] = true,
				["enableAllOfTheThings_20180820"] = true,
				["forceEnableEnhancedRecheckBoomkin_20210712"] = true,
				["autoconvertDisplayToggle_20190621_1"] = true,
				["resetAllPotions_20201209"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
			},
			["specs"] = {
				[262] = {
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["enhancedRecheck"] = false,
					["enabled"] = true,
					["petbased"] = false,
					["custom1Name"] = "Custom 1",
					["cycle"] = false,
					["maxRefresh"] = 10,
					["damagePets"] = false,
					["settings"] = {
						["stack_buffer"] = 1.1,
					},
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = true,
					["buffPadding"] = 0,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["package"] = "Elemental",
					["nameplates"] = false,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "potion_of_spectral_intellect",
					["throttleTime"] = false,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 8,
					["damage"] = true,
					["damageRange"] = 0,
				},
				[263] = {
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["enhancedRecheck"] = false,
					["enabled"] = true,
					["petbased"] = false,
					["custom1Name"] = "Custom 1",
					["cycle"] = false,
					["abilities"] = {
						["chain_lightning"] = {
							["keybind"] = "S+6",
						},
						["flame_shock"] = {
							["keybind"] = "S+3",
						},
					},
					["maxRefresh"] = 10,
					["damagePets"] = false,
					["settings"] = {
						["pad_windstrike"] = true,
					},
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["package"] = "Enhancement",
					["nameplates"] = true,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "potion_of_spectral_agility",
					["throttleTime"] = false,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 8,
					["damage"] = true,
					["damageRange"] = 0,
				},
				[102] = {
					["enabled"] = true,
					["enhancedRecheck"] = true,
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
				[269] = {
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["enhancedRecheck"] = false,
					["strict"] = false,
					["enabled"] = true,
					["petbased"] = false,
					["custom1Name"] = "Custom 1",
					["cycle"] = true,
					["abilities"] = {
						["expel_harm"] = {
							["keybind"] = "S+6",
						},
						["fist_of_the_white_tiger"] = {
							["keybind"] = "S+1",
						},
						["whirling_dragon_punch"] = {
							["keybind"] = "S+3",
						},
						["touch_of_karma"] = {
							["keybind"] = "5",
						},
					},
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
					["buffPadding"] = 0,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["package"] = "Windwalker",
					["damage"] = true,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "potion_of_spectral_agility",
					["potionsReset"] = 20180919.1,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["throttleTime"] = false,
					["damageRange"] = 0,
				},
			},
			["displays"] = {
				["Interrupts"] = {
					["delays"] = {
						["font"] = "Friz Quadrata TT",
					},
					["rel"] = "CENTER",
					["targets"] = {
						["font"] = "Friz Quadrata TT",
					},
					["captions"] = {
						["font"] = "Friz Quadrata TT",
					},
					["y"] = -224.9999542236328,
					["x"] = -54.9999885559082,
					["keybindings"] = {
						["font"] = "Friz Quadrata TT",
					},
				},
				["Cooldowns"] = {
					["delays"] = {
						["font"] = "Friz Quadrata TT",
					},
					["rel"] = "CENTER",
					["targets"] = {
						["font"] = "Friz Quadrata TT",
					},
					["captions"] = {
						["font"] = "Friz Quadrata TT",
					},
					["y"] = -279.9999694824219,
					["keybindings"] = {
						["font"] = "Friz Quadrata TT",
					},
				},
				["Primary"] = {
					["targets"] = {
						["font"] = "Friz Quadrata TT",
					},
					["rel"] = "CENTER",
					["delays"] = {
						["font"] = "Friz Quadrata TT",
					},
					["captions"] = {
						["font"] = "Friz Quadrata TT",
					},
					["queue"] = {
						["width"] = 32,
						["height"] = 32,
					},
					["keybindings"] = {
						["font"] = "Friz Quadrata TT",
					},
					["x"] = -43.26989364624023,
					["primaryHeight"] = 32,
					["primaryWidth"] = 32,
					["y"] = -120.3456039428711,
				},
				["AOE"] = {
					["targets"] = {
						["font"] = "Friz Quadrata TT",
					},
					["rel"] = "CENTER",
					["delays"] = {
						["font"] = "Friz Quadrata TT",
					},
					["captions"] = {
						["font"] = "Friz Quadrata TT",
					},
					["queue"] = {
						["width"] = 32,
						["height"] = 32,
					},
					["keybindings"] = {
						["font"] = "Friz Quadrata TT",
					},
					["x"] = -42.26519393920898,
					["primaryHeight"] = 32,
					["primaryWidth"] = 32,
					["y"] = -119.6864624023438,
				},
				["Defensives"] = {
					["delays"] = {
						["font"] = "Friz Quadrata TT",
					},
					["rel"] = "CENTER",
					["targets"] = {
						["font"] = "Friz Quadrata TT",
					},
					["captions"] = {
						["font"] = "Friz Quadrata TT",
					},
					["y"] = -224.9999542236328,
					["x"] = -109.9999771118164,
					["keybindings"] = {
						["font"] = "Friz Quadrata TT",
					},
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
								["cycle_tarrgets"] = "1",
								["action"] = "fist_of_the_white_tiger",
								["criteria"] = "chi.max - chi >= 3",
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
								["name"] = "shadowgrasp_totem",
								["action"] = "shadowgrasp_totem",
								["criteria"] = "pet.xuen_the_white_tiger.active || boss & fight_remains < 20 || ! runeforge.invokers_delight.enabled",
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
								["name"] = "dreadfire_vessel",
								["action"] = "dreadfire_vessel",
								["criteria"] = "! variable.xuen_on_use_trinket || cooldown.invoke_xuen_the_white_tiger.remains > 20 & pet.xuen_the_white_tiger.remains < 20 || variable.hold_xuen",
							}, -- [14]
							{
								["enabled"] = true,
								["name"] = "shadowgrasp_totem",
								["action"] = "shadowgrasp_totem",
								["criteria"] = "pet.xuen_the_white_tiger.active || boss & fight_remains < 20 || ! runeforge.invokers_delight.enabled",
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
								["name"] = "ashvanes_razor_coral",
								["action"] = "ashvanes_razor_coral",
								["criteria"] = "debuff.razor_coral_debuff.down || debuff.conductive_ink_debuff.up & target.health.pct < 31 || time_to_die < 20",
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
								["criteria"] = "settings.purify_stagger_currhp > 0 & group & stagger.pct >= settings.purify_stagger_currhp",
								["action"] = "purifying_brew",
								["description"] = "Use configured purify_stagger_currhp from Brewmaster options.",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "settings.purify_stagger_currhp > 0 & solo & stagger.pct >= settings.purify_stagger_currhp * 0.5",
								["action"] = "purifying_brew",
								["description"] = "Use configured purify_stagger_currhp from Brewmaster options.",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "settings.purify_stagger_maxhp > 0 & group & stagger.pct >= settings.purify_stagger_maxhp",
								["action"] = "purifying_brew",
								["description"] = "Use configured purify_stagger_maxhp from Brewmaster options.",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "settings.purify_stagger_maxhp > 0 & solo & stagger.pct >= settings.purify_stagger_maxhp * 0.5",
								["action"] = "purifying_brew",
								["description"] = "Use configured purify_stagger_maxhp from Brewmaster options.",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "stagger.amounttototalpct >= 0.7 & ( cooldown.invoke_niuzao_the_black_ox.remains < 5 || buff.invoke_niuzao_the_black_ox.up )",
								["action"] = "purifying_brew",
								["description"] = "Cast PB during the Niuzao window, but only if recently hit.",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "settings.purify_stagger_currhp = 0 & settings.purify_stagger_maxhp = 0 & group & stagger.pct > 20",
								["action"] = "purifying_brew",
								["description"] = "Stagger % of 20 will kill you in 2.5 seconds without healing or purifying.  Used when purify_stagger_currhp and maxhp are disabled.",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "settings.purify_stagger_currhp = 0 & settings.purify_stagger_maxhp = 0 & solo & stagger.pct > 10",
								["action"] = "purifying_brew",
								["description"] = "Stagger % of 10 will kill you in 5 seconds without healing or purifying.  Used when purify_stagger_currhp and maxhp are disabled.",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "buff.invoke_niuzao_the_black_ox.up & buff.invoke_niuzao_the_black_ox.remains < 8",
								["action"] = "purifying_brew",
								["description"] = "Dump PB charges towards the end of Niuzao: anything is better than nothing.",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.purifying_brew.charges_fractional >= 1.8 & ( cooldown.invoke_niuzao_the_black_ox.remains > 10 || buff.invoke_niuzao_the_black_ox.up )",
								["action"] = "purifying_brew",
								["description"] = "Avoid capping charges, but pool charges shortly before Niuzao comes up and allow dumping to avoid capping during Niuzao.",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.purifying_brew.charges_fractional < 0.5",
								["action"] = "black_ox_brew",
								["description"] = "Black Ox Brew is currently used to either replenish brews based on less than half a brew charge available, or low energy to enable Keg Smash",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "( energy + ( energy.regen * cooldown.keg_smash.remains ) ) < 40 & buff.blackout_combo.down & cooldown.keg_smash.up",
								["action"] = "black_ox_brew",
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 5 * healing_sphere.count || ( healing_sphere.count >= 3 & health.pct < 50 )",
								["action"] = "expel_harm",
								["description"] = "Healing Elixir",
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
								["criteria"] = "spell_targets >= 2",
								["action"] = "keg_smash",
								["description"] = "Offensively, the APL prioritizes KS on cleave, BoS else, with energy spenders and cds sorted below",
							}, -- [36]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets >= 2",
								["action"] = "faeline_stomp",
							}, -- [37]
							{
								["enabled"] = true,
								["criteria"] = "buff.weapons_of_order.up",
								["action"] = "keg_smash",
								["description"] = "Cast KS at top prio during WoO buff.",
							}, -- [38]
							{
								["enabled"] = true,
								["criteria"] = "tanking & buff.blackout_combo.down & incoming_damage_2999ms > ( health.max * 0.05 + stagger.last_tick_damage_4 ) & buff.elusive_brawler.stack < 2",
								["action"] = "celestial_brew",
								["description"] = "Celestial Brew priority whenever it took significant damage and ironskin brew buff is missing (adjust the health.max coefficient according to intensity of damage taken), and to dump excess charges before BoB.",
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
								["criteria"] = "buff.gift_of_the_ox.stack >= 2",
								["action"] = "expel_harm",
								["description"] = "Expel Harm has higher DPET than TP when you have at least 2 orbs.",
							}, -- [59]
							{
								["enabled"] = true,
								["criteria"] = "! runeforge.shaohaos_might.equipped & ( active_enemies >= 3 || settings.ox_walker & conduit.walk_with_the_ox.enabled ) & cooldown.keg_smash.remains > gcd & ( energy + ( energy.regen * ( cooldown.keg_smash.remains + execute_time ) ) ) >= 65 & ( ! talent.spitfire.enabled || ! runeforge.charred_passions.equipped )",
								["action"] = "spinning_crane_kick",
								["description"] = "Cast SCK if enough enemies are around, or if WWWTO is enabled. This is a slight defensive loss over using TP but generally reduces sim variance more than anything else.",
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
				["Elemental"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20211207,
					["spec"] = 262,
					["desc"] = "Elemental Shaman\nNovember 13, 2021\n\nChanges:\n- Incorporate settings.stack_buffer for Icefury, Stormkeeper.\n- Add Meteor and Eye of the Storm again.",
					["profile"] = "## Elemental Shaman\n## November 13, 2021\n\n## Changes:\n## - Incorporate settings.stack_buffer for Icefury, Stormkeeper.\n## - Add Meteor and Eye of the Storm again.\n\n# Executed every time the actor is available.\nactions.precombat=earth_elemental,if=!talent.primal_elementalist.enabled\n# Use Stormkeeper precombat unless some adds will spawn soon.\nactions.precombat+=/fleshcraft,if=soulbind.pustule_eruption||soulbind.volatile_solvent\nactions.precombat+=/stormkeeper,if=talent.stormkeeper.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)\nactions.precombat+=/fire_elemental\nactions.precombat+=/elemental_blast,if=talent.elemental_blast.enabled&spell_targets.chain_lightning<3\n# Because LvB has a travel time, the addon places *this entry* on CD for 3 seconds to avoid double-LvB on pull.\nactions.precombat+=/lava_burst,line_cd=3,if=!talent.elemental_blast.enabled&spell_targets.chain_lightning<3||buff.stormkeeper.up\nactions.precombat+=/chain_lightning,if=!talent.elemental_blast.enabled&spell_targets.chain_lightning>=3&!buff.stormkeeper.up\nactions.precombat+=/potion\n\n# Interrupt of casts.\nactions+=/wind_shear\nactions+=/spiritwalkers_grace,moving=1\nactions+=/potion\nactions+=/use_items\nactions+=/flame_shock,if=(!talent.elemental_blast.enabled)&!ticking&!pet.storm_elemental.active&(spell_targets.chain_lightning<3||talent.master_of_the_elements.enabled||runeforge.skybreakers_fiery_demise.equipped)\nactions+=/primordial_wave,cycle_targets=1,if=!buff.primordial_wave.up&(!pet.storm_elemental.active||spell_targets.chain_lightning<3&buff.wind_gust.stack<20||soulbind.lead_by_example.enabled)&(spell_targets.chain_lightning<5||talent.master_of_the_elements.enabled||runeforge.skybreakers_fiery_demise.equipped||soulbind.lead_by_example.enabled)\nactions+=/flame_shock,if=!ticking&(!pet.storm_elemental.active||spell_targets.chain_lightning<3&buff.wind_gust.stack<20)&(spell_targets.chain_lightning<3||talent.master_of_the_elements.enabled||runeforge.skybreakers_fiery_demise.equipped)\nactions+=/fire_elemental\nactions+=/meteor\nactions+=/blood_fury,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/berserking,if=!talent.ascendance.enabled||buff.ascendance.up\nactions+=/fireblood,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/ancestral_call,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/bag_of_tricks,if=!talent.ascendance.enabled||!buff.ascendance.up\nactions+=/vesper_totem\nactions+=/fae_transfusion,if=covenant.night_fae&!runeforge.seeds_of_rampant_growth.equipped&(!talent.master_of_the_elements.enabled||buff.master_of_the_elements.up)&spell_targets.chain_lightning<3\nactions+=/fae_transfusion,if=covenant.night_fae&runeforge.seeds_of_rampant_growth.equipped&(!talent.master_of_the_elements.enabled||buff.master_of_the_elements.up||spell_targets.chain_lightning>=3)&(cooldown.fire_elemental.remains>20||cooldown.storm_elemental.remains>20)\nactions+=/run_action_list,name=aoe,strict=1,if=active_enemies>2&(spell_targets.chain_lightning>2||spell_targets.lava_beam>2)\nactions+=/run_action_list,name=single_target,strict=1,if=!talent.storm_elemental.enabled&active_enemies<=2\nactions+=/run_action_list,name=se_single_target,strict=1,if=talent.storm_elemental.enabled&active_enemies<=2\n\nactions.aoe=storm_elemental\nactions.aoe+=/eye_of_the_storm,if=buff.call_lightning.remains>=10\nactions.aoe+=/earthquake,if=buff.echoing_shock.up\nactions.aoe+=/chain_harvest\nactions.aoe+=/stormkeeper,if=talent.stormkeeper.enabled\nactions.aoe+=/flame_shock,cycle_targets=1,if=refreshable&((active_dot.flame_shock<2&active_enemies<=3&cooldown.primordial_wave.remains<16&covenant.necrolord&!pet.storm_elemental.active||active_dot.flame_shock<1&active_enemies>=4&!pet.storm_elemental.active&talent.master_of_the_elements.enabled)||(runeforge.skybreakers_fiery_demise.equipped&!pet.storm_elemental.active))\nactions.aoe+=/flame_shock,if=!active_dot.flame_shock&!pet.storm_elemental.active&(talent.master_of_the_elements.enabled||runeforge.skybreakers_fiery_demise.equipped)\nactions.aoe+=/echoing_shock,if=talent.echoing_shock.enabled&maelstrom>=60&(runeforge.echoes_of_great_sundering.equipped&buff.echoes_of_great_sundering.up||!runeforge.echoes_of_great_sundering.equipped)\nactions.aoe+=/ascendance,if=talent.ascendance.enabled&(!pet.storm_elemental.active)&(!talent.icefury.enabled||!buff.icefury.up&!cooldown.icefury.up)\nactions.aoe+=/liquid_magma_totem,if=talent.liquid_magma_totem.enabled\nactions.aoe+=/chain_lightning,if=spell_targets.chain_lightning<4&buff.master_of_the_elements.up&maelstrom<50\nactions.aoe+=/earth_shock,if=runeforge.echoes_of_great_sundering.equipped&!buff.echoes_of_great_sundering.up\nactions.aoe+=/lava_burst,if=dot.flame_shock.remains&spell_targets.chain_lightning<4&(!pet.storm_elemental.active)&(buff.lava_surge.up&!buff.master_of_the_elements.up&talent.master_of_the_elements.enabled)\nactions.aoe+=/earthquake,if=spell_targets.chain_lightning>=2&!runeforge.echoes_of_great_sundering.equipped&(talent.master_of_the_elements.enabled&maelstrom>=50&!buff.master_of_the_elements.up)\nactions.aoe+=/lava_burst,if=dot.flame_shock.remains&buff.lava_surge.up&buff.primordial_wave.up\nactions.aoe+=/lava_burst,if=dot.flame_shock.remains&spell_targets.chain_lightning<4&runeforge.skybreakers_fiery_demise.equipped&buff.lava_surge.up&talent.master_of_the_elements.enabled&!buff.master_of_the_elements.up&maelstrom>=50\nactions.aoe+=/lava_burst,if=dot.flame_shock.remains&((spell_targets.chain_lightning<4&runeforge.skybreakers_fiery_demise.equipped&talent.master_of_the_elements.enabled)||(talent.master_of_the_elements.enabled&maelstrom>=50&!buff.master_of_the_elements.up&(!runeforge.echoes_of_great_sundering.equipped||buff.echoes_of_great_sundering.up)&!runeforge.skybreakers_fiery_demise.equipped))\nactions.aoe+=/lava_burst,if=dot.flame_shock.remains&spell_targets.chain_lightning=4&runeforge.skybreakers_fiery_demise.equipped&buff.lava_surge.up&talent.master_of_the_elements.enabled&!buff.master_of_the_elements.up&maelstrom>=50\nactions.aoe+=/earthquake,if=spell_targets.chain_lightning>=2\nactions.aoe+=/chain_lightning,if=buff.stormkeeper.remains<3*gcd*buff.stormkeeper.stack\nactions.aoe+=/lava_burst,if=buff.lava_surge.up&spell_targets.chain_lightning<4&(!pet.storm_elemental.active)&dot.flame_shock.ticking\nactions.aoe+=/elemental_blast,if=talent.elemental_blast.enabled&spell_targets.chain_lightning<5&(!pet.storm_elemental.active)\nactions.aoe+=/lava_beam,if=talent.ascendance.enabled\nactions.aoe+=/chain_lightning\nactions.aoe+=/lava_burst,moving=1,if=buff.lava_surge.up&cooldown_react\nactions.aoe+=/flame_shock,moving=1,cycle_targets=1,if=refreshable\nactions.aoe+=/frost_shock,moving=1\n\nactions.se_single_target=storm_elemental\nactions.se_single_target+=/eye_of_the_storm,if=buff.call_lightning.remains>=10\nactions.se_single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up&buff.icefury.remains<settings.stack_buffer*gcd*buff.icefury.stack&buff.wind_gust.stack<18\nactions.se_single_target+=/elemental_blast,if=talent.elemental_blast.enabled\nactions.se_single_target+=/stormkeeper,if=talent.stormkeeper.enabled\nactions.se_single_target+=/echoing_shock,if=talent.echoing_shock.enabled&cooldown.lava_burst.remains<=gcd&spell_targets.chain_lightning<2||maelstrom>=60&spell_targets.chain_lightning>=2&(!runeforge.echoes_of_great_sundering.equipped||buff.echoes_of_great_sundering.up)||spell_targets.chain_lightning<2&buff.wind_gust.stack>=18&(!runeforge.echoes_of_great_sundering.equipped||buff.echoes_of_great_sundering.up)&maelstrom>=60\nactions.se_single_target+=/lava_burst,if=(buff.wind_gust.stack<18&!buff.bloodlust.up)||buff.lava_surge.up\nactions.se_single_target+=/lava_burst,if=talent.echoing_shock.enabled&buff.echoing_shock.up&spell_targets.chain_lightning<2\nactions.se_single_target+=/earthquake,if=talent.echoing_shock.enabled&buff.echoing_shock.up&spell_targets.chain_lightning>=2\nactions.se_single_target+=/lightning_bolt,if=buff.stormkeeper.up\nactions.se_single_target+=/earthquake,if=buff.echoes_of_great_sundering.up\nactions.se_single_target+=/earth_shock,if=spell_targets.chain_lightning<2&maelstrom>=60&(buff.wind_gust.stack<20||maelstrom>90)||(runeforge.echoes_of_great_sundering.equipped&!buff.echoes_of_great_sundering.up)\nactions.se_single_target+=/earthquake,if=(spell_targets.chain_lightning>1)&(!dot.flame_shock.refreshable)\nactions.se_single_target+=/chain_lightning,if=active_enemies>1&pet.storm_elemental.active&buff.bloodlust.up\nactions.se_single_target+=/lightning_bolt,if=pet.storm_elemental.active&buff.bloodlust.up\nactions.se_single_target+=/lava_burst,if=buff.ascendance.up\nactions.se_single_target+=/lava_burst,if=cooldown_react\nactions.se_single_target+=/lava_burst,if=cooldown_react&charges>talent.echo_of_the_elements.enabled\nactions.se_single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up\nactions.se_single_target+=/chain_harvest\nactions.se_single_target+=/fleshcraft,interrupt=1,if=soulbind.volatile_solvent\nactions.se_single_target+=/static_discharge,if=talent.static_discharge.enabled\nactions.se_single_target+=/earth_elemental,if=!talent.primal_elementalist.enabled||talent.primal_elementalist.enabled&(!pet.storm_elemental.active)\nactions.se_single_target+=/chain_lightning,if=active_enemies>1&(spell_targets.chain_lightning>1||spell_targets.lava_beam>1)\nactions.se_single_target+=/lightning_bolt\nactions.se_single_target+=/flame_shock,moving=1,cycle_targets=1,if=refreshable\nactions.se_single_target+=/flame_shock,moving=1,if=movement.distance>6\nactions.se_single_target+=/frost_shock,moving=1\n\nactions.single_target=lightning_bolt,if=(buff.stormkeeper.remains<settings.stack_buffer*gcd*buff.stormkeeper.stack)\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up&buff.icefury.remains<settings.stack_buffer*gcd*buff.icefury.stack\nactions.single_target+=/flame_shock,cycle_targets=1,if=(!ticking||dot.flame_shock.remains<=gcd||talent.ascendance.enabled&dot.flame_shock.remains<(cooldown.ascendance.remains+buff.ascendance.duration)&cooldown.ascendance.remains<4)&(buff.lava_surge.up||!buff.bloodlust.up)\nactions.single_target+=/flame_shock,cycle_targets=1,if=buff.primordial_wave.up&refreshable\nactions.single_target+=/ascendance,if=talent.ascendance.enabled&(time>=60||buff.bloodlust.up)&(cooldown.lava_burst.remains>0)&(!talent.icefury.enabled||!buff.icefury.up&!cooldown.icefury.up)\nactions.single_target+=/lava_burst,if=buff.lava_surge.up&(runeforge.windspeakers_lava_resurgence.equipped||!buff.master_of_the_elements.up&talent.master_of_the_elements.enabled)\nactions.single_target+=/elemental_blast,if=talent.elemental_blast.enabled&(maelstrom<70)\nactions.single_target+=/stormkeeper,if=talent.stormkeeper.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)&(maelstrom<44)\nactions.single_target+=/echoing_shock,if=talent.echoing_shock.enabled&cooldown.lava_burst.remains<=gcd\nactions.single_target+=/lava_burst,if=talent.echoing_shock.enabled&buff.echoing_shock.up\nactions.single_target+=/liquid_magma_totem,if=talent.liquid_magma_totem.enabled\nactions.single_target+=/earthquake,if=buff.echoes_of_great_sundering.up&talent.master_of_the_elements.enabled&buff.master_of_the_elements.up\nactions.single_target+=/lightning_bolt,if=buff.stormkeeper.up&buff.master_of_the_elements.up&maelstrom<60\nactions.single_target+=/earthquake,if=buff.echoes_of_great_sundering.up&(talent.master_of_the_elements.enabled&(buff.master_of_the_elements.up||cooldown.lava_burst.remains>0&maelstrom>=92||spell_targets.chain_lightning<2&buff.stormkeeper.up&cooldown.lava_burst.remains<=gcd)||!talent.master_of_the_elements.enabled||cooldown.elemental_blast.remains<=settings.stack_buffer*gcd*2)\nactions.single_target+=/earthquake,if=spell_targets.chain_lightning>1&!dot.flame_shock.refreshable&!runeforge.echoes_of_great_sundering.equipped&(!talent.master_of_the_elements.enabled||buff.master_of_the_elements.up||cooldown.lava_burst.remains>0&maelstrom>=92)\nactions.single_target+=/lava_burst,if=cooldown_react&(!buff.master_of_the_elements.up&buff.icefury.up)\nactions.single_target+=/lava_burst,if=cooldown_react&charges>talent.echo_of_the_elements.enabled&!buff.icefury.up\nactions.single_target+=/lava_burst,if=talent.echo_of_the_elements.enabled&!buff.master_of_the_elements.up&maelstrom>=50&!buff.echoes_of_great_sundering.up\nactions.single_target+=/earth_shock,if=(runeforge.echoes_of_great_sundering.equipped||spell_targets.chain_lightning<2)&(talent.master_of_the_elements.enabled&!buff.echoes_of_great_sundering.up&(buff.master_of_the_elements.up||maelstrom>=92||spell_targets.chain_lightning<2&buff.stormkeeper.up&cooldown.lava_burst.remains<=gcd)||!talent.master_of_the_elements.enabled||cooldown.elemental_blast.remains<=settings.stack_buffer*gcd*2)\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&talent.master_of_the_elements.enabled&buff.icefury.up&buff.master_of_the_elements.up\nactions.single_target+=/lava_burst,if=buff.ascendance.up\nactions.single_target+=/lava_burst,if=cooldown_react&!talent.master_of_the_elements.enabled\nactions.single_target+=/icefury,if=talent.icefury.enabled&!(maelstrom>35&cooldown.lava_burst.remains<=0)\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up&(buff.icefury.remains<gcd*4*buff.icefury.stack||buff.stormkeeper.up||!talent.master_of_the_elements.enabled)\nactions.single_target+=/lava_burst\nactions.single_target+=/flame_shock,cycle_targets=1,if=refreshable\nactions.single_target+=/frost_shock,if=runeforge.elemental_equilibrium.equipped&!buff.elemental_equilibrium_debuff.up&!talent.elemental_blast.enabled&!talent.echoing_shock.enabled\nactions.single_target+=/fleshcraft,interrupt=1,if=soulbind.volatile_solvent\nactions.single_target+=/chain_harvest\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up\nactions.single_target+=/static_discharge,if=talent.static_discharge.enabled\nactions.single_target+=/earth_elemental,if=!talent.primal_elementalist.enabled||!pet.fire_elemental.active\nactions.single_target+=/chain_lightning,if=spell_targets.chain_lightning>1\nactions.single_target+=/lightning_bolt\nactions.single_target+=/flame_shock,moving=1,cycle_targets=1,if=refreshable\nactions.single_target+=/flame_shock,moving=1,if=movement.distance>6\nactions.single_target+=/frost_shock,moving=1\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up&buff.icefury.remains<settings.stack_buffer*gcd*buff.icefury.stack",
					["version"] = 20211207,
					["warnings"] = "WARNING:  The import for 'single_target' required some automated changes.\nLine 28: Converted 'soulbind.X' to 'soulbind.X.enabled' at EOL (1x).\n\nWARNING:  The import for 'precombat' required some automated changes.\nLine 2: Converted 'soulbind.X' to 'soulbind.X.enabled' (1x).\nLine 2: Converted 'soulbind.X' to 'soulbind.X.enabled' at EOL (1x).\n\nWARNING:  The import for 'se_single_target' required some automated changes.\nLine 21: Converted 'soulbind.X' to 'soulbind.X.enabled' at EOL (1x).\n\nImported 5 action lists.\n",
					["lists"] = {
						["single_target"] = {
							{
								["enabled"] = true,
								["criteria"] = "( buff.stormkeeper.remains < settings.stack_buffer * gcd * buff.stormkeeper.stack )",
								["action"] = "lightning_bolt",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up & buff.icefury.remains < settings.stack_buffer * gcd * buff.icefury.stack",
								["action"] = "frost_shock",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( ! ticking || dot.flame_shock.remains <= gcd || talent.ascendance.enabled & dot.flame_shock.remains < ( cooldown.ascendance.remains + buff.ascendance.duration ) & cooldown.ascendance.remains < 4 ) & ( buff.lava_surge.up || ! buff.bloodlust.up )",
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.primordial_wave.up & refreshable",
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled & ( time >= 60 || buff.bloodlust.up ) & ( cooldown.lava_burst.remains > 0 ) & ( ! talent.icefury.enabled || ! buff.icefury.up & ! cooldown.icefury.up )",
								["action"] = "ascendance",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.lava_surge.up & ( runeforge.windspeakers_lava_resurgence.equipped || ! buff.master_of_the_elements.up & talent.master_of_the_elements.enabled )",
								["action"] = "lava_burst",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled & ( maelstrom < 70 )",
								["action"] = "elemental_blast",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled & ( raid_event.adds.count < 3 || raid_event.adds.in > 50 ) & ( maelstrom < 44 )",
								["action"] = "stormkeeper",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.echoing_shock.enabled & cooldown.lava_burst.remains <= gcd",
								["action"] = "echoing_shock",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.echoing_shock.enabled & buff.echoing_shock.up",
								["action"] = "lava_burst",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.liquid_magma_totem.enabled",
								["action"] = "liquid_magma_totem",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.echoes_of_great_sundering.up & talent.master_of_the_elements.enabled & buff.master_of_the_elements.up",
								["action"] = "earthquake",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.up & buff.master_of_the_elements.up & maelstrom < 60",
								["action"] = "lightning_bolt",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.echoes_of_great_sundering.up & ( talent.master_of_the_elements.enabled & ( buff.master_of_the_elements.up || cooldown.lava_burst.remains > 0 & maelstrom >= 92 || spell_targets.chain_lightning < 2 & buff.stormkeeper.up & cooldown.lava_burst.remains <= gcd ) || ! talent.master_of_the_elements.enabled || cooldown.elemental_blast.remains <= settings.stack_buffer * gcd * 2 )",
								["action"] = "earthquake",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning > 1 & ! dot.flame_shock.refreshable & ! runeforge.echoes_of_great_sundering.equipped & ( ! talent.master_of_the_elements.enabled || buff.master_of_the_elements.up || cooldown.lava_burst.remains > 0 & maelstrom >= 92 )",
								["action"] = "earthquake",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & ( ! buff.master_of_the_elements.up & buff.icefury.up )",
								["action"] = "lava_burst",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & charges > talent.echo_of_the_elements.enabled & ! buff.icefury.up",
								["action"] = "lava_burst",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "talent.echo_of_the_elements.enabled & ! buff.master_of_the_elements.up & maelstrom >= 50 & ! buff.echoes_of_great_sundering.up",
								["action"] = "lava_burst",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "( runeforge.echoes_of_great_sundering.equipped || spell_targets.chain_lightning < 2 ) & ( talent.master_of_the_elements.enabled & ! buff.echoes_of_great_sundering.up & ( buff.master_of_the_elements.up || maelstrom >= 92 || spell_targets.chain_lightning < 2 & buff.stormkeeper.up & cooldown.lava_burst.remains <= gcd ) || ! talent.master_of_the_elements.enabled || cooldown.elemental_blast.remains <= settings.stack_buffer * gcd * 2 )",
								["action"] = "earth_shock",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & talent.master_of_the_elements.enabled & buff.icefury.up & buff.master_of_the_elements.up",
								["action"] = "frost_shock",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up",
								["action"] = "lava_burst",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & ! talent.master_of_the_elements.enabled",
								["action"] = "lava_burst",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & ! ( maelstrom > 35 & cooldown.lava_burst.remains <= 0 )",
								["action"] = "icefury",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up & ( buff.icefury.remains < gcd * 4 * buff.icefury.stack || buff.stormkeeper.up || ! talent.master_of_the_elements.enabled )",
								["action"] = "frost_shock",
							}, -- [24]
							{
								["action"] = "lava_burst",
								["enabled"] = true,
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.elemental_equilibrium.equipped & ! buff.elemental_equilibrium_debuff.up & ! talent.elemental_blast.enabled & ! talent.echoing_shock.enabled",
								["action"] = "frost_shock",
							}, -- [27]
							{
								["enabled"] = true,
								["interrupt"] = "1",
								["criteria"] = "soulbind.volatile_solvent.enabled",
								["action"] = "fleshcraft",
							}, -- [28]
							{
								["action"] = "chain_harvest",
								["enabled"] = true,
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up",
								["action"] = "frost_shock",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "talent.static_discharge.enabled",
								["action"] = "static_discharge",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "! talent.primal_elementalist.enabled || ! pet.fire_elemental.active",
								["action"] = "earth_elemental",
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning > 1",
								["action"] = "chain_lightning",
							}, -- [33]
							{
								["action"] = "lightning_bolt",
								["enabled"] = true,
							}, -- [34]
							{
								["moving"] = 1,
								["enable_moving"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["enabled"] = true,
								["criteria"] = "refreshable",
							}, -- [35]
							{
								["enabled"] = true,
								["enable_moving"] = true,
								["action"] = "flame_shock",
								["moving"] = 1,
								["criteria"] = "movement.distance > 6",
							}, -- [36]
							{
								["moving"] = 1,
								["enable_moving"] = true,
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [37]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up & buff.icefury.remains < settings.stack_buffer * gcd * buff.icefury.stack",
								["action"] = "frost_shock",
							}, -- [38]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Interrupt of casts.",
								["action"] = "wind_shear",
							}, -- [1]
							{
								["moving"] = 1,
								["enable_moving"] = true,
								["action"] = "spiritwalkers_grace",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.elemental_blast.enabled ) & ! ticking & ! pet.storm_elemental.active & ( spell_targets.chain_lightning < 3 || talent.master_of_the_elements.enabled || runeforge.skybreakers_fiery_demise.equipped )",
								["action"] = "flame_shock",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! buff.primordial_wave.up & ( ! pet.storm_elemental.active || spell_targets.chain_lightning < 3 & buff.wind_gust.stack < 20 || soulbind.lead_by_example.enabled ) & ( spell_targets.chain_lightning < 5 || talent.master_of_the_elements.enabled || runeforge.skybreakers_fiery_demise.equipped || soulbind.lead_by_example.enabled )",
								["action"] = "primordial_wave",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & ( ! pet.storm_elemental.active || spell_targets.chain_lightning < 3 & buff.wind_gust.stack < 20 ) & ( spell_targets.chain_lightning < 3 || talent.master_of_the_elements.enabled || runeforge.skybreakers_fiery_demise.equipped )",
								["action"] = "flame_shock",
							}, -- [7]
							{
								["action"] = "fire_elemental",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "meteor",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "blood_fury",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up",
								["action"] = "berserking",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "fireblood",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "ancestral_call",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || ! buff.ascendance.up",
								["action"] = "bag_of_tricks",
							}, -- [14]
							{
								["action"] = "vesper_totem",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "covenant.night_fae & ! runeforge.seeds_of_rampant_growth.equipped & ( ! talent.master_of_the_elements.enabled || buff.master_of_the_elements.up ) & spell_targets.chain_lightning < 3",
								["action"] = "fae_transfusion",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "covenant.night_fae & runeforge.seeds_of_rampant_growth.equipped & ( ! talent.master_of_the_elements.enabled || buff.master_of_the_elements.up || spell_targets.chain_lightning >= 3 ) & ( cooldown.fire_elemental.remains > 20 || cooldown.storm_elemental.remains > 20 )",
								["action"] = "fae_transfusion",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies > 2 & ( spell_targets.chain_lightning > 2 || spell_targets.lava_beam > 2 )",
								["list_name"] = "aoe",
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "! talent.storm_elemental.enabled & active_enemies <= 2",
								["list_name"] = "single_target",
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "talent.storm_elemental.enabled & active_enemies <= 2",
								["list_name"] = "se_single_target",
							}, -- [20]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["action"] = "earth_elemental",
								["description"] = "Executed every time the actor is available.",
								["criteria"] = "! talent.primal_elementalist.enabled",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "fleshcraft",
								["description"] = "Use Stormkeeper precombat unless some adds will spawn soon.",
								["criteria"] = "soulbind.pustule_eruption.enabled || soulbind.volatile_solvent.enabled",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled & ( raid_event.adds.count < 3 || raid_event.adds.in > 50 )",
								["action"] = "stormkeeper",
							}, -- [3]
							{
								["action"] = "fire_elemental",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled & spell_targets.chain_lightning < 3",
								["action"] = "elemental_blast",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "lava_burst",
								["line_cd"] = "3",
								["description"] = "Because LvB has a travel time, the addon places *this entry* on CD for 3 seconds to avoid double-LvB on pull.",
								["criteria"] = "! talent.elemental_blast.enabled & spell_targets.chain_lightning < 3 || buff.stormkeeper.up",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! talent.elemental_blast.enabled & spell_targets.chain_lightning >= 3 & ! buff.stormkeeper.up",
								["action"] = "chain_lightning",
							}, -- [7]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [8]
						},
						["aoe"] = {
							{
								["action"] = "storm_elemental",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.call_lightning.remains >= 10",
								["action"] = "eye_of_the_storm",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.echoing_shock.up",
								["action"] = "earthquake",
							}, -- [3]
							{
								["action"] = "chain_harvest",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled",
								["action"] = "stormkeeper",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ( ( active_dot.flame_shock < 2 & active_enemies <= 3 & cooldown.primordial_wave.remains < 16 & covenant.necrolord & ! pet.storm_elemental.active || active_dot.flame_shock < 1 & active_enemies >= 4 & ! pet.storm_elemental.active & talent.master_of_the_elements.enabled ) || ( runeforge.skybreakers_fiery_demise.equipped & ! pet.storm_elemental.active ) )",
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! active_dot.flame_shock & ! pet.storm_elemental.active & ( talent.master_of_the_elements.enabled || runeforge.skybreakers_fiery_demise.equipped )",
								["action"] = "flame_shock",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.echoing_shock.enabled & maelstrom >= 60 & ( runeforge.echoes_of_great_sundering.equipped & buff.echoes_of_great_sundering.up || ! runeforge.echoes_of_great_sundering.equipped )",
								["action"] = "echoing_shock",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled & ( ! pet.storm_elemental.active ) & ( ! talent.icefury.enabled || ! buff.icefury.up & ! cooldown.icefury.up )",
								["action"] = "ascendance",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.liquid_magma_totem.enabled",
								["action"] = "liquid_magma_totem",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 4 & buff.master_of_the_elements.up & maelstrom < 50",
								["action"] = "chain_lightning",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.echoes_of_great_sundering.equipped & ! buff.echoes_of_great_sundering.up",
								["action"] = "earth_shock",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "dot.flame_shock.remains & spell_targets.chain_lightning < 4 & ( ! pet.storm_elemental.active ) & ( buff.lava_surge.up & ! buff.master_of_the_elements.up & talent.master_of_the_elements.enabled )",
								["action"] = "lava_burst",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning >= 2 & ! runeforge.echoes_of_great_sundering.equipped & ( talent.master_of_the_elements.enabled & maelstrom >= 50 & ! buff.master_of_the_elements.up )",
								["action"] = "earthquake",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "dot.flame_shock.remains & buff.lava_surge.up & buff.primordial_wave.up",
								["action"] = "lava_burst",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "dot.flame_shock.remains & spell_targets.chain_lightning < 4 & runeforge.skybreakers_fiery_demise.equipped & buff.lava_surge.up & talent.master_of_the_elements.enabled & ! buff.master_of_the_elements.up & maelstrom >= 50",
								["action"] = "lava_burst",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "dot.flame_shock.remains & ( ( spell_targets.chain_lightning < 4 & runeforge.skybreakers_fiery_demise.equipped & talent.master_of_the_elements.enabled ) || ( talent.master_of_the_elements.enabled & maelstrom >= 50 & ! buff.master_of_the_elements.up & ( ! runeforge.echoes_of_great_sundering.equipped || buff.echoes_of_great_sundering.up ) & ! runeforge.skybreakers_fiery_demise.equipped ) )",
								["action"] = "lava_burst",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "dot.flame_shock.remains & spell_targets.chain_lightning = 4 & runeforge.skybreakers_fiery_demise.equipped & buff.lava_surge.up & talent.master_of_the_elements.enabled & ! buff.master_of_the_elements.up & maelstrom >= 50",
								["action"] = "lava_burst",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning >= 2",
								["action"] = "earthquake",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.remains < 3 * gcd * buff.stormkeeper.stack",
								["action"] = "chain_lightning",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "buff.lava_surge.up & spell_targets.chain_lightning < 4 & ( ! pet.storm_elemental.active ) & dot.flame_shock.ticking",
								["action"] = "lava_burst",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled & spell_targets.chain_lightning < 5 & ( ! pet.storm_elemental.active )",
								["action"] = "elemental_blast",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled",
								["action"] = "lava_beam",
							}, -- [23]
							{
								["action"] = "chain_lightning",
								["enabled"] = true,
							}, -- [24]
							{
								["enabled"] = true,
								["enable_moving"] = true,
								["action"] = "lava_burst",
								["moving"] = 1,
								["criteria"] = "buff.lava_surge.up & cooldown_react",
							}, -- [25]
							{
								["moving"] = 1,
								["enable_moving"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["enabled"] = true,
								["criteria"] = "refreshable",
							}, -- [26]
							{
								["moving"] = 1,
								["enable_moving"] = true,
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [27]
						},
						["se_single_target"] = {
							{
								["action"] = "storm_elemental",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.call_lightning.remains >= 10",
								["action"] = "eye_of_the_storm",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up & buff.icefury.remains < settings.stack_buffer * gcd * buff.icefury.stack & buff.wind_gust.stack < 18",
								["action"] = "frost_shock",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled",
								["action"] = "elemental_blast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled",
								["action"] = "stormkeeper",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.echoing_shock.enabled & cooldown.lava_burst.remains <= gcd & spell_targets.chain_lightning < 2 || maelstrom >= 60 & spell_targets.chain_lightning >= 2 & ( ! runeforge.echoes_of_great_sundering.equipped || buff.echoes_of_great_sundering.up ) || spell_targets.chain_lightning < 2 & buff.wind_gust.stack >= 18 & ( ! runeforge.echoes_of_great_sundering.equipped || buff.echoes_of_great_sundering.up ) & maelstrom >= 60",
								["action"] = "echoing_shock",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( buff.wind_gust.stack < 18 & ! buff.bloodlust.up ) || buff.lava_surge.up",
								["action"] = "lava_burst",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.echoing_shock.enabled & buff.echoing_shock.up & spell_targets.chain_lightning < 2",
								["action"] = "lava_burst",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.echoing_shock.enabled & buff.echoing_shock.up & spell_targets.chain_lightning >= 2",
								["action"] = "earthquake",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.up",
								["action"] = "lightning_bolt",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.echoes_of_great_sundering.up",
								["action"] = "earthquake",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 2 & maelstrom >= 60 & ( buff.wind_gust.stack < 20 || maelstrom > 90 ) || ( runeforge.echoes_of_great_sundering.equipped & ! buff.echoes_of_great_sundering.up )",
								["action"] = "earth_shock",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( spell_targets.chain_lightning > 1 ) & ( ! dot.flame_shock.refreshable )",
								["action"] = "earthquake",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & pet.storm_elemental.active & buff.bloodlust.up",
								["action"] = "chain_lightning",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "pet.storm_elemental.active & buff.bloodlust.up",
								["action"] = "lightning_bolt",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up",
								["action"] = "lava_burst",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react",
								["action"] = "lava_burst",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & charges > talent.echo_of_the_elements.enabled",
								["action"] = "lava_burst",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up",
								["action"] = "frost_shock",
							}, -- [19]
							{
								["action"] = "chain_harvest",
								["enabled"] = true,
							}, -- [20]
							{
								["enabled"] = true,
								["interrupt"] = "1",
								["criteria"] = "soulbind.volatile_solvent.enabled",
								["action"] = "fleshcraft",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "talent.static_discharge.enabled",
								["action"] = "static_discharge",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "! talent.primal_elementalist.enabled || talent.primal_elementalist.enabled & ( ! pet.storm_elemental.active )",
								["action"] = "earth_elemental",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & ( spell_targets.chain_lightning > 1 || spell_targets.lava_beam > 1 )",
								["action"] = "chain_lightning",
							}, -- [24]
							{
								["action"] = "lightning_bolt",
								["enabled"] = true,
							}, -- [25]
							{
								["moving"] = 1,
								["enable_moving"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["enabled"] = true,
								["criteria"] = "refreshable",
							}, -- [26]
							{
								["enabled"] = true,
								["enable_moving"] = true,
								["action"] = "flame_shock",
								["moving"] = 1,
								["criteria"] = "movement.distance > 6",
							}, -- [27]
							{
								["moving"] = 1,
								["enable_moving"] = true,
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [28]
						},
					},
					["author"] = "SimulationCraft",
				},
				["Enhancement"] = {
					["source"] = "SimC",
					["builtIn"] = true,
					["date"] = 20211207,
					["spec"] = 263,
					["desc"] = "Enhancement Shaman\nNovember 13, 2021",
					["lists"] = {
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.crash_lightning.up",
								["action"] = "windstrike",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.grove_invigoration.enabled || soulbind.field_of_blossoms.enabled",
								["action"] = "fae_transfusion",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.doom_winds.equipped & buff.doom_winds.up",
								["action"] = "crash_lightning",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.hailstorm.up",
								["action"] = "frost_shock",
							}, -- [4]
							{
								["action"] = "sundering",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ( talent.fire_nova.enabled || talent.lashing_flames.enabled || covenant.necrolord || runeforge.primal_lava_actuators.equipped )",
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! buff.primordial_wave.up",
								["action"] = "primordial_wave",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_dot.flame_shock >= 3",
								["action"] = "fire_nova",
							}, -- [8]
							{
								["action"] = "vesper_totem",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.primordial_wave.up & buff.maelstrom_weapon.stack >= 5",
								["action"] = "lightning_bolt",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.up",
								["action"] = "chain_lightning",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.crashing_storm.enabled || buff.crash_lightning.down",
								["action"] = "crash_lightning",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "talent.lashing_flames.enabled",
								["action"] = "lava_lash",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.crash_lightning.up & ( buff.hot_hand.up || ( runeforge.primal_lava_actuators.equipped & buff.primal_lava_actuators.stack > 6 ) )",
								["action"] = "lava_lash",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.crash_lightning.up",
								["action"] = "stormstrike",
							}, -- [15]
							{
								["action"] = "crash_lightning",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5",
								["action"] = "chain_harvest",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5",
								["action"] = "elemental_blast",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5",
								["action"] = "stormkeeper",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack = 10",
								["action"] = "chain_lightning",
							}, -- [20]
							{
								["action"] = "windstrike",
								["enabled"] = true,
							}, -- [21]
							{
								["action"] = "stormstrike",
								["enabled"] = true,
							}, -- [22]
							{
								["action"] = "lava_lash",
								["enabled"] = true,
							}, -- [23]
							{
								["enabled"] = true,
								["interrupt"] = "1",
								["criteria"] = "soulbind.volatile_solvent.enabled",
								["action"] = "fleshcraft",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
							}, -- [25]
							{
								["action"] = "fae_transfusion",
								["enabled"] = true,
							}, -- [26]
							{
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [27]
							{
								["action"] = "ice_strike",
								["enabled"] = true,
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5",
								["action"] = "chain_lightning",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "active_dot.flame_shock > 1",
								["action"] = "fire_nova",
							}, -- [30]
							{
								["action"] = "earthen_spike",
								["enabled"] = true,
							}, -- [31]
							{
								["action"] = "earth_elemental",
								["enabled"] = true,
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "buff.windfury_totem.remains < 30",
								["action"] = "windfury_totem",
							}, -- [33]
						},
						["single"] = {
							{
								["action"] = "windstrike",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_hand.up || ( runeforge.primal_lava_actuators.equipped & buff.primal_lava_actuators.stack > 6 )",
								["action"] = "lava_lash",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! buff.primordial_wave.up",
								["action"] = "primordial_wave",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.doom_winds.equipped & buff.doom_winds.up",
								["action"] = "stormstrike",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.doom_winds.equipped & buff.doom_winds.up",
								["action"] = "crash_lightning",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.doom_winds.equipped & buff.doom_winds.up",
								["action"] = "ice_strike",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.doom_winds.equipped & buff.doom_winds.up",
								["action"] = "sundering",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! ticking",
								["action"] = "flame_shock",
							}, -- [8]
							{
								["action"] = "vesper_totem",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.hailstorm.up",
								["action"] = "frost_shock",
							}, -- [10]
							{
								["action"] = "earthen_spike",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! runeforge.seeds_of_rampant_growth.equipped || cooldown.feral_spirit.remains > 15",
								["action"] = "fae_transfusion",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.up",
								["action"] = "chain_lightning",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5",
								["action"] = "elemental_blast",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5 & raid_event.adds.in >= 90",
								["action"] = "chain_harvest",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack = 10",
								["action"] = "lightning_bolt",
							}, -- [16]
							{
								["action"] = "stormstrike",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5",
								["action"] = "stormkeeper",
							}, -- [18]
							{
								["enabled"] = true,
								["interrupt"] = "1",
								["criteria"] = "soulbind.volatile_solvent.enabled",
								["action"] = "fleshcraft",
							}, -- [19]
							{
								["action"] = "lava_lash",
								["enabled"] = true,
							}, -- [20]
							{
								["action"] = "crash_lightning",
								["enabled"] = true,
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
							}, -- [22]
							{
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [23]
							{
								["action"] = "ice_strike",
								["enabled"] = true,
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in >= 40",
								["action"] = "sundering",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "active_dot.flame_shock",
								["action"] = "fire_nova",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5",
								["action"] = "lightning_bolt",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.pustule_eruption.enabled",
								["action"] = "fleshcraft",
							}, -- [28]
							{
								["action"] = "earth_elemental",
								["enabled"] = true,
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "buff.windfury_totem.remains < 30",
								["action"] = "windfury_totem",
							}, -- [30]
						},
						["default"] = {
							{
								["action"] = "bloodlust",
								["enabled"] = false,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "boss & fight_remains < 60",
								["description"] = "In-combat potion is before combat ends.",
								["action"] = "potion",
							}, -- [2]
							{
								["enabled"] = true,
								["description"] = "Interrupt",
								["action"] = "wind_shear",
							}, -- [3]
							{
								["action"] = "heart_essence",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "blood_fury",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up",
								["action"] = "berserking",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "fireblood",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "ancestral_call",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || ! buff.ascendance.up",
								["action"] = "bag_of_tricks",
							}, -- [10]
							{
								["action"] = "feral_spirit",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "( talent.ascendance.enabled || runeforge.doom_winds.equipped ) & ( soulbind.grove_invigoration.enabled || soulbind.field_of_blossoms.enabled || active_enemies = 1 )",
								["action"] = "fae_transfusion",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in >= 90 || active_enemies > 1",
								["action"] = "ascendance",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.doom_winds.equipped & buff.doom_winds_debuff.down & ( raid_event.adds.in >= 60 || active_enemies > 1 ) || buff.windfury_totem.down & ( ! runeforge.doom_winds.equipped || buff.doom_winds_debuff.up )",
								["action"] = "windfury_totem",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "If only one enemy, priority follows the 'single' action list.",
								["strict"] = 1,
								["criteria"] = "active_enemies = 1",
								["list_name"] = "single",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "On multiple enemies, the priority follows the 'aoe' action list.",
								["strict"] = 1,
								["criteria"] = "active_enemies > 1",
								["list_name"] = "aoe",
							}, -- [16]
							{
								["action"] = "counterstrike_totem",
								["enabled"] = true,
							}, -- [17]
							{
								["action"] = "skyfury_totem",
								["enabled"] = true,
							}, -- [18]
							{
								["action"] = "primal_strike",
								["enabled"] = true,
							}, -- [19]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.windfury_weapon.remains < 300",
								["action"] = "windfury_weapon",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.flametongue_weapon.remains < 300",
								["action"] = "flametongue_weapon",
							}, -- [2]
							{
								["action"] = "bottled_flayedwing_toxin",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.lightning_shield.remains < 300",
								["action"] = "lightning_shield",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled",
								["action"] = "stormkeeper",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! runeforge.doom_winds.equipped & buff.windfury_totem.down",
								["action"] = "windfury_totem",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.pustule_eruption.enabled || soulbind.volatile_solvent.enabled",
								["action"] = "fleshcraft",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "boss",
								["action"] = "potion",
							}, -- [8]
						},
					},
					["version"] = 20211207,
					["warnings"] = "WARNING:  The import for 'aoe' required some automated changes.\nLine 2: Converted 'soulbind.X' to 'soulbind.X.enabled' (1x).\nLine 2: Converted 'soulbind.X' to 'soulbind.X.enabled' at EOL (1x).\nLine 24: Converted 'soulbind.X' to 'soulbind.X.enabled' at EOL (1x).\n\nWARNING:  The import for 'single' required some automated changes.\nLine 19: Converted 'soulbind.X' to 'soulbind.X.enabled' at EOL (1x).\nLine 28: Converted 'soulbind.X' to 'soulbind.X.enabled' at EOL (1x).\n\nWARNING:  The import for 'default' required some automated changes.\nLine 12: Converted 'soulbind.X' to 'soulbind.X.enabled' (2x).\n\nWARNING:  The import for 'precombat' required some automated changes.\nLine 7: Converted 'soulbind.X' to 'soulbind.X.enabled' (1x).\nLine 7: Converted 'soulbind.X' to 'soulbind.X.enabled' at EOL (1x).\n\nImported 4 action lists.\n",
					["profile"] = "## Enhancement Shaman\n## November 13, 2021\n\nactions.precombat=windfury_weapon,if=buff.windfury_weapon.remains<300\nactions.precombat+=/flametongue_weapon,if=buff.flametongue_weapon.remains<300\nactions.precombat+=/bottled_flayedwing_toxin\nactions.precombat+=/lightning_shield,if=buff.lightning_shield.remains<300\nactions.precombat+=/stormkeeper,if=talent.stormkeeper.enabled\nactions.precombat+=/windfury_totem,if=!runeforge.doom_winds.equipped&buff.windfury_totem.down\nactions.precombat+=/fleshcraft,if=soulbind.pustule_eruption||soulbind.volatile_solvent\nactions.precombat+=/potion,if=boss\n\n## Executed every time the actor is available.\nactions=bloodlust\n# In-combat potion is before combat ends.\nactions+=/potion,if=boss&fight_remains<60\n# Interrupt\nactions+=/wind_shear\nactions+=/heart_essence\nactions+=/use_items\nactions+=/blood_fury,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/berserking,if=!talent.ascendance.enabled||buff.ascendance.up\nactions+=/fireblood,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/ancestral_call,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/bag_of_tricks,if=!talent.ascendance.enabled||!buff.ascendance.up\nactions+=/feral_spirit\nactions+=/fae_transfusion,if=(talent.ascendance.enabled||runeforge.doom_winds.equipped)&(soulbind.grove_invigoration||soulbind.field_of_blossoms||active_enemies=1)\nactions+=/ascendance,if=raid_event.adds.in>=90||active_enemies>1\nactions+=/windfury_totem,if=runeforge.doom_winds.equipped&buff.doom_winds_debuff.down&(raid_event.adds.in>=60||active_enemies>1)||buff.windfury_totem.down&(!runeforge.doom_winds.equipped||buff.doom_winds_debuff.up)\n# If only one enemy, priority follows the 'single' action list.\nactions+=/call_action_list,name=single,strict=1,if=active_enemies=1\n# On multiple enemies, the priority follows the 'aoe' action list.\nactions+=/call_action_list,name=aoe,strict=1,if=active_enemies>1\nactions+=/counterstrike_totem\nactions+=/skyfury_totem\nactions+=/primal_strike\n\n## Multi target action priority list\nactions.aoe=windstrike,if=buff.crash_lightning.up\nactions.aoe+=/fae_transfusion,if=soulbind.grove_invigoration||soulbind.field_of_blossoms\nactions.aoe+=/crash_lightning,if=runeforge.doom_winds.equipped&buff.doom_winds.up\nactions.aoe+=/frost_shock,if=buff.hailstorm.up\nactions.aoe+=/sundering\nactions.aoe+=/flame_shock,cycle_targets=1,if=refreshable&(talent.fire_nova.enabled||talent.lashing_flames.enabled||covenant.necrolord||runeforge.primal_lava_actuators.equipped)\nactions.aoe+=/primordial_wave,cycle_targets=1,if=!buff.primordial_wave.up\nactions.aoe+=/fire_nova,if=active_dot.flame_shock>=3\nactions.aoe+=/vesper_totem\nactions.aoe+=/lightning_bolt,if=buff.primordial_wave.up&buff.maelstrom_weapon.stack>=5\nactions.aoe+=/chain_lightning,if=buff.stormkeeper.up\nactions.aoe+=/crash_lightning,if=talent.crashing_storm.enabled||buff.crash_lightning.down\nactions.aoe+=/lava_lash,cycle_targets=1,if=talent.lashing_flames.enabled\nactions.aoe+=/lava_lash,if=buff.crash_lightning.up&(buff.hot_hand.up||(runeforge.primal_lava_actuators.equipped&buff.primal_lava_actuators.stack>6))\nactions.aoe+=/stormstrike,if=buff.crash_lightning.up\nactions.aoe+=/crash_lightning\nactions.aoe+=/chain_harvest,if=buff.maelstrom_weapon.stack>=5\nactions.aoe+=/elemental_blast,if=buff.maelstrom_weapon.stack>=5\nactions.aoe+=/stormkeeper,if=buff.maelstrom_weapon.stack>=5\nactions.aoe+=/chain_lightning,if=buff.maelstrom_weapon.stack=10\nactions.aoe+=/windstrike\nactions.aoe+=/stormstrike\nactions.aoe+=/lava_lash\nactions.aoe+=/fleshcraft,interrupt=1,if=soulbind.volatile_solvent\nactions.aoe+=/flame_shock,cycle_targets=1,if=refreshable\nactions.aoe+=/fae_transfusion\nactions.aoe+=/frost_shock\nactions.aoe+=/ice_strike\nactions.aoe+=/chain_lightning,if=buff.maelstrom_weapon.stack>=5\nactions.aoe+=/fire_nova,if=active_dot.flame_shock>1\nactions.aoe+=/earthen_spike\nactions.aoe+=/earth_elemental\nactions.aoe+=/windfury_totem,if=buff.windfury_totem.remains<30\n\n## Single target action priority list\nactions.single=windstrike\nactions.single+=/lava_lash,if=buff.hot_hand.up||(runeforge.primal_lava_actuators.equipped&buff.primal_lava_actuators.stack>6)\nactions.single+=/primordial_wave,if=!buff.primordial_wave.up\nactions.single+=/stormstrike,if=runeforge.doom_winds.equipped&buff.doom_winds.up\nactions.single+=/crash_lightning,if=runeforge.doom_winds.equipped&buff.doom_winds.up\nactions.single+=/ice_strike,if=runeforge.doom_winds.equipped&buff.doom_winds.up\nactions.single+=/sundering,if=runeforge.doom_winds.equipped&buff.doom_winds.up\nactions.single+=/flame_shock,if=!ticking\nactions.single+=/vesper_totem\nactions.single+=/frost_shock,if=buff.hailstorm.up\nactions.single+=/earthen_spike\nactions.single+=/fae_transfusion,if=!runeforge.seeds_of_rampant_growth.equipped||cooldown.feral_spirit.remains>15\nactions.single+=/chain_lightning,if=buff.stormkeeper.up\nactions.single+=/elemental_blast,if=buff.maelstrom_weapon.stack>=5\nactions.single+=/chain_harvest,if=buff.maelstrom_weapon.stack>=5&raid_event.adds.in>=90\nactions.single+=/lightning_bolt,if=buff.maelstrom_weapon.stack=10\nactions.single+=/stormstrike\nactions.single+=/stormkeeper,if=buff.maelstrom_weapon.stack>=5\nactions.single+=/fleshcraft,interrupt=1,if=soulbind.volatile_solvent\nactions.single+=/lava_lash\nactions.single+=/crash_lightning\nactions.single+=/flame_shock,cycle_targets=1,if=refreshable\nactions.single+=/frost_shock\nactions.single+=/ice_strike\nactions.single+=/sundering,if=raid_event.adds.in>=40\nactions.single+=/fire_nova,if=active_dot.flame_shock\nactions.single+=/lightning_bolt,if=buff.maelstrom_weapon.stack>=5\nactions.single+=/fleshcraft,if=soulbind.pustule_eruption\nactions.single+=/earth_elemental\nactions.single+=/windfury_totem,if=buff.windfury_totem.remains<30",
					["author"] = "SimC",
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
