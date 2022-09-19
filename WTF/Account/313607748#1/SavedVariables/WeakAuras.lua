
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["editor_tab_spaces"] = 4,
	["displays"] = {
		["Combo P 1"] = {
			["color"] = {
				0.023529411764706, -- [1]
				0.023529411764706, -- [2]
				0.023529411764706, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -93.99984741211,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/-KySiHY1Y/4",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["useCount"] = true,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["unit"] = "player",
						["power"] = "0",
						["power_operator"] = ">=",
						["powertype"] = 4,
						["event"] = "Power",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["unevent"] = "auto",
						["count"] = "0",
						["spellIds"] = {
						},
						["use_power"] = true,
						["subeventSuffix"] = "_CAST_START",
						["countOperator"] = ">=",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"Cat Form", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 45,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["use_encounterid"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[4] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 768,
				["role"] = {
					["multi"] = {
					},
				},
			},
			["textureWrapMode"] = "CLAMP",
			["mirror"] = false,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["anchorFrameType"] = "SCREEN",
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["discrete_rotation"] = 0,
			["selfPoint"] = "CENTER",
			["semver"] = "1.0.3",
			["tocversion"] = 90002,
			["id"] = "Combo P 1",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["width"] = 45,
			["xOffset"] = -69.999694824219,
			["uid"] = "NTXNm6x5MxN",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Feral Group",
		},
		["Combo P 3"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["color"] = {
				0.023529411764706, -- [1]
				0.023529411764706, -- [2]
				0.023529411764706, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["zoom"] = 0,
			["yOffset"] = -95,
			["anchorPoint"] = "CENTER",
			["glow"] = false,
			["authorOptions"] = {
			},
			["parent"] = "Feral Group",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/-KySiHY1Y/4",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["powertype"] = 4,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["unevent"] = "auto",
						["power_operator"] = ">=",
						["event"] = "Power",
						["use_percentpower"] = false,
						["use_power"] = true,
						["names"] = {
						},
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["power"] = "0",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"Cat Form", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["auto"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["xOffset"] = 0.0003662109375,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["internalVersion"] = 53,
			["desaturate"] = false,
			["rotation"] = 0,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 4,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 45,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["use_encounterid"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[4] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 768,
				["role"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["textureWrapMode"] = "CLAMP",
			["text2Containment"] = "INSIDE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["text1Font"] = "Friz Quadrata TT",
			["text1Containment"] = "INSIDE",
			["mirror"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "texture",
			["config"] = {
			},
			["blendMode"] = "BLEND",
			["text2FontSize"] = 24,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["text1"] = "%s",
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["discrete_rotation"] = 0,
			["text2"] = "%p",
			["semver"] = "1.0.3",
			["tocversion"] = 90002,
			["id"] = "Combo P 3",
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["alpha"] = 1,
			["width"] = 45,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "Y86o7wpu7tA",
			["inverse"] = false,
			["frameStrata"] = 1,
			["text2Enabled"] = false,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["cooldownTextDisabled"] = false,
		},
		["Energy bar"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["color"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0.0001220703125,
			["anchorPoint"] = "CENTER",
			["desaturateBackground"] = false,
			["textureWrapMode"] = "CLAMP",
			["sameTexture"] = true,
			["url"] = "https://wago.io/-KySiHY1Y/4",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["genericShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["use_unit"] = true,
						["duration"] = "1",
						["use_requirePowerType"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["powertype"] = 3,
						["spellIds"] = {
						},
						["names"] = {
						},
						["event"] = "Power",
						["subeventSuffix"] = "_CAST_START",
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"Cat Form", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 53,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 250,
			["foregroundColor"] = {
				0.9921568627451, -- [1]
				0.67058823529412, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["use_encounterid"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_exact_spellknown"] = true,
				["spellknown"] = 768,
				["zoneIds"] = "",
			},
			["xOffset"] = 6.103515625e-05,
			["useAdjustededMax"] = false,
			["backgroundTexture"] = "450915",
			["selfPoint"] = "CENTER",
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["config"] = {
			},
			["startAngle"] = 0,
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["crop"] = 0.41,
			["anchorFrameType"] = "SCREEN",
			["blendMode"] = "ADD",
			["alpha"] = 0.5,
			["parent"] = "Feral Group",
			["slantMode"] = "INSIDE",
			["compress"] = false,
			["mirror"] = false,
			["regionType"] = "progresstexture",
			["semver"] = "1.0.3",
			["tocversion"] = 90002,
			["id"] = "Energy bar",
			["crop_y"] = 0.41,
			["frameStrata"] = 1,
			["width"] = 330,
			["fontSize"] = 12,
			["uid"] = "02QuWp4M8Ha",
			["inverse"] = false,
			["desaturateForeground"] = false,
			["orientation"] = "VERTICAL",
			["crop_x"] = 0.41,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["backgroundOffset"] = 0,
		},
		["Combo P 5"] = {
			["color"] = {
				0.023529411764706, -- [1]
				0.023529411764706, -- [2]
				0.023529411764706, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -95,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/-KySiHY1Y/4",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["powertype"] = 4,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["unevent"] = "auto",
						["power_operator"] = ">=",
						["event"] = "Power",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["spellIds"] = {
						},
						["use_power"] = true,
						["power"] = "0",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"Cat Form", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 45,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["use_encounterid"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[4] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 768,
				["role"] = {
					["multi"] = {
					},
				},
			},
			["textureWrapMode"] = "CLAMP",
			["mirror"] = false,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["anchorFrameType"] = "SCREEN",
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["discrete_rotation"] = 0,
			["selfPoint"] = "CENTER",
			["semver"] = "1.0.3",
			["tocversion"] = 90002,
			["id"] = "Combo P 5",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["width"] = 45,
			["xOffset"] = 69.999755859375,
			["uid"] = "X6u(J7fSwar",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Feral Group",
		},
		["Feral Group"] = {
			["controlledChildren"] = {
				"Rip De-Buff", -- [1]
				"Rake De-Buff", -- [2]
				"Moonfire", -- [3]
				"Innervate", -- [4]
				"Rake Timer", -- [5]
				"Rip Time", -- [6]
				"MoonFire Time", -- [7]
				"Tigers Fury Bar", -- [8]
				"Heart of the Wild Buff", -- [9]
				"Challenging Roar", -- [10]
				"Challending Roar T", -- [11]
				"Energy bar", -- [12]
				" Rage bar", -- [13]
				"Omen of Clarity", -- [14]
				"Combo P 1", -- [15]
				"Combo p 2", -- [16]
				"Combo P 3", -- [17]
				"Combo P 4", -- [18]
				"Combo P 5", -- [19]
				"CP 1", -- [20]
				"CP 2", -- [21]
				"CP 3", -- [22]
				"CP 4", -- [23]
				"CP 5", -- [24]
				"Regrowth", -- [25]
				"Regrowth Time", -- [26]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -25.32461547851563,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["url"] = "https://wago.io/-KySiHY1Y/4",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["version"] = 4,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "group",
			["borderSize"] = 16,
			["borderOffset"] = 5,
			["semver"] = "1.0.3",
			["tocversion"] = 90002,
			["id"] = "Feral Group",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "BOTTOMLEFT",
			["config"] = {
			},
			["xOffset"] = -0.7490234375,
			["uid"] = "T6pMKlBJhqK",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
				["groupOffset"] = true,
			},
			["borderInset"] = 11,
		},
		["CP 1"] = {
			["color"] = {
				0.4156862745098, -- [1]
				0, -- [2]
				0.019607843137255, -- [3]
				0.75, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -95,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/-KySiHY1Y/4",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["powertype"] = 4,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["power"] = "1",
						["power_operator"] = ">=",
						["event"] = "Power",
						["use_power"] = true,
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["spellIds"] = {
						},
						["custom_type"] = "status",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"Cat Form", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 50,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["use_encounterid"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[4] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 768,
				["zoneIds"] = "",
			},
			["textureWrapMode"] = "CLAMP",
			["mirror"] = false,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["anchorFrameType"] = "SCREEN",
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
			["discrete_rotation"] = 0,
			["selfPoint"] = "CENTER",
			["semver"] = "1.0.3",
			["tocversion"] = 90002,
			["id"] = "CP 1",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["width"] = 50,
			["xOffset"] = -70,
			["uid"] = "bR1U5pJgQTI",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Feral Group",
		},
		["CP 5"] = {
			["color"] = {
				0.4156862745098, -- [1]
				0, -- [2]
				0.023529411764706, -- [3]
				0.75, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -95,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/-KySiHY1Y/4",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["powertype"] = 4,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["power"] = "5",
						["power_operator"] = ">=",
						["event"] = "Power",
						["use_power"] = true,
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["spellIds"] = {
						},
						["custom_type"] = "status",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"Cat Form", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 50,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["use_encounterid"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[4] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 768,
				["zoneIds"] = "",
			},
			["textureWrapMode"] = "CLAMP",
			["mirror"] = false,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["anchorFrameType"] = "SCREEN",
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
			["discrete_rotation"] = 0,
			["selfPoint"] = "CENTER",
			["semver"] = "1.0.3",
			["tocversion"] = 90002,
			["id"] = "CP 5",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["width"] = 50,
			["xOffset"] = 70,
			["uid"] = "WUq5SkNT9z8",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Feral Group",
		},
		["CP 3"] = {
			["color"] = {
				0.4078431372549, -- [1]
				0, -- [2]
				0.023529411764706, -- [3]
				0.75, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -94.99981689453,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/-KySiHY1Y/4",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["powertype"] = 4,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["power"] = "3",
						["power_operator"] = ">=",
						["event"] = "Power",
						["use_power"] = true,
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["spellIds"] = {
						},
						["custom_type"] = "status",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"Cat Form", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 50,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["use_encounterid"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[4] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 768,
				["zoneIds"] = "",
			},
			["textureWrapMode"] = "CLAMP",
			["mirror"] = false,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["anchorFrameType"] = "SCREEN",
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
			["discrete_rotation"] = 0,
			["selfPoint"] = "CENTER",
			["semver"] = "1.0.3",
			["tocversion"] = 90002,
			["id"] = "CP 3",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["width"] = 50,
			["xOffset"] = 0.00018310546875,
			["uid"] = "pR(abhstDnn",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Feral Group",
		},
		["Tigers Fury Bar"] = {
			["sparkWidth"] = 10,
			["borderBackdrop"] = "Blizzard Tooltip",
			["useAdjustededMax"] = false,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = -180,
			["anchorPoint"] = "CENTER",
			["iconSource"] = -1,
			["parent"] = "Feral Group",
			["sparkRotation"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/-KySiHY1Y/4",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"5217", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["names"] = {
							"Tiger's Fury", -- [1]
						},
						["ownOnly"] = true,
						["spellIds"] = {
							5217, -- [1]
						},
						["useName"] = true,
						["useGroup_count"] = false,
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 53,
			["authorOptions"] = {
			},
			["selfPoint"] = "CENTER",
			["backdropInFront"] = false,
			["sparkRotationMode"] = "AUTO",
			["barColor"] = {
				1, -- [1]
				0.89803921568627, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["desaturate"] = false,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["type"] = "subtext",
					["anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = -1,
					["text_shadowXOffset"] = 1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_time_legacy_floor"] = true,
					["text_fontSize"] = 10,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "%n",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_visible"] = true,
					["text_fontSize"] = 10,
					["anchorXOffset"] = 0,
					["text_shadowXOffset"] = 1,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "ICON_CENTER",
					["text_fontSize"] = 10,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [5]
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 5,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0.5, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "None",
					["border_size"] = 16,
				}, -- [6]
			},
			["height"] = 10,
			["uid"] = "IgMUkV2sEcn",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["use_encounterid"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 768,
				["zoneIds"] = "",
			},
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkOffsetY"] = 0,
			["width"] = 250.00003051758,
			["frameStrata"] = 1,
			["config"] = {
			},
			["sparkHidden"] = "NEVER",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = true,
			["auto"] = true,
			["icon_side"] = "RIGHT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkHeight"] = 30,
			["texture"] = "Blizzard",
			["spark"] = false,
			["zoom"] = 0,
			["semver"] = "1.0.3",
			["tocversion"] = 90002,
			["id"] = "Tigers Fury Bar",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["fontFlags"] = "OUTLINE",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["sparkOffsetX"] = 0,
		},
		["MoonFire Time"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 132.50048828125,
			["displayText"] = "%p",
			["yOffset"] = -118.99993896484,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/-KySiHY1Y/4",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"Moonfire", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["names"] = {
							"Moonfire", -- [1]
						},
						["ownOnly"] = true,
						["spellIds"] = {
							155625, -- [1]
						},
						["useName"] = true,
						["useGroup_count"] = false,
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["unit"] = "target",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 53,
			["selfPoint"] = "BOTTOM",
			["font"] = "Friz Quadrata TT",
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 15.000045776367,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["use_encounterid"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[4] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 768,
				["zoneIds"] = "",
			},
			["fontSize"] = 15,
			["uid"] = "aM8kHSiUWm4",
			["shadowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["automaticWidth"] = "Auto",
			["regionType"] = "text",
			["fixedWidth"] = 200,
			["preferToUpdate"] = false,
			["color"] = {
				0.51372549019608, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["semver"] = "1.0.3",
			["displayText_format_p_time_precision"] = 1,
			["shadowYOffset"] = -1,
			["anchorFrameType"] = "SCREEN",
			["wordWrap"] = "WordWrap",
			["justify"] = "LEFT",
			["tocversion"] = 90002,
			["id"] = "MoonFire Time",
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["frameStrata"] = 1,
			["width"] = 50.999919891357,
			["authorOptions"] = {
			},
			["config"] = {
			},
			["displayText_format_p_time_legacy_floor"] = true,
			["parent"] = "Feral Group",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayText_format_p_time_mod_rate"] = true,
		},
		["Heart of the Wild Buff"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -75,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/-KySiHY1Y/4",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"Heart of the Wild", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "player",
						["unitExists"] = false,
						["ownOnly"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_t_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text_format_p_big_number_format"] = "AbbreviateNumbers",
					["text_text_format_t_gcd_gcd"] = true,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fixedWidth"] = 64,
					["text_text_format_t_big_number_format"] = "AbbreviateNumbers",
					["rotateText"] = "NONE",
					["text_text_format_t_gcd_hide_zero"] = false,
					["text_color"] = {
						0, -- [1]
						1, -- [2]
						0.12156862745098, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_text_format_t_decimal_precision"] = 1,
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_t_time_format"] = 0,
					["text_text_format_t_realm_name"] = "never",
					["text_justify"] = "CENTER",
					["text_text_format_p_time_mod_rate"] = true,
					["text_text_format_t_format"] = "timed",
					["text_shadowXOffset"] = 0,
					["text_text"] = "%p",
					["type"] = "subtext",
					["text_fontType"] = "OUTLINE",
					["text_text_format_t_color"] = true,
					["text_font"] = "Friz Quadrata TT",
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_text_format_t_abbreviate_max"] = 8,
					["text_text_format_t_abbreviate"] = false,
					["text_text_format_t_gcd_cast"] = false,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_t_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_p_time_legacy_floor"] = true,
					["text_text_format_t_gcd_channel"] = false,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "Pixel",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 35,
			["load"] = {
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["zoneIds"] = "",
			},
			["xOffset"] = -40,
			["cooldownTextDisabled"] = false,
			["regionType"] = "icon",
			["parent"] = "Feral Group",
			["icon"] = true,
			["information"] = {
			},
			["cooldownEdge"] = false,
			["uid"] = "7AF3Ez6AazJ",
			["width"] = 35,
			["zoom"] = 0,
			["semver"] = "1.0.3",
			["tocversion"] = 90002,
			["id"] = "Heart of the Wild Buff",
			["alpha"] = 1,
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "inverse",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [2]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [3]
					},
				}, -- [1]
			},
			["cooldown"] = false,
			["authorOptions"] = {
			},
		},
		[" Rage bar"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["xOffset"] = -0.78997802734375,
			["preferToUpdate"] = false,
			["yOffset"] = -0.789947509765625,
			["anchorPoint"] = "CENTER",
			["desaturateBackground"] = false,
			["smoothProgress"] = true,
			["sameTexture"] = true,
			["url"] = "https://wago.io/-KySiHY1Y/4",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["use_requirePowerType"] = false,
						["unevent"] = "auto",
						["use_unit"] = true,
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["powertype"] = 1,
						["spellIds"] = {
						},
						["event"] = "Power",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"Dire Bear Form", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 53,
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["foregroundColor"] = {
				1, -- [1]
				0, -- [2]
				0.1490196078431373, -- [3]
				1, -- [4]
			},
			["crop_x"] = 0.41,
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 250,
			["desaturateForeground"] = false,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["use_encounterid"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["zoneIds"] = "",
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_exact_spellknown"] = true,
				["spellknown"] = 9634,
				["race"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["useAdjustededMax"] = false,
			["fontSize"] = 12,
			["startAngle"] = 0,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["uid"] = "G1BAYlaRM6a",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["crop"] = 0.41,
			["anchorFrameType"] = "SCREEN",
			["blendMode"] = "ADD",
			["frameStrata"] = 1,
			["textureWrapMode"] = "CLAMP",
			["slantMode"] = "INSIDE",
			["compress"] = false,
			["regionType"] = "progresstexture",
			["color"] = {
			},
			["semver"] = "1.0.3",
			["tocversion"] = 90002,
			["id"] = " Rage bar",
			["parent"] = "Feral Group",
			["alpha"] = 0.9,
			["width"] = 330,
			["backgroundTexture"] = "450915",
			["config"] = {
			},
			["inverse"] = false,
			["crop_y"] = 0.41,
			["orientation"] = "VERTICAL",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["backgroundOffset"] = 0,
		},
		["Rip Time"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 83,
			["displayText"] = "%p",
			["yOffset"] = -98.999938964844,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/-KySiHY1Y/4",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"1079", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["names"] = {
							"Rip", -- [1]
						},
						["ownOnly"] = true,
						["spellIds"] = {
							1079, -- [1]
						},
						["useName"] = true,
						["useGroup_count"] = false,
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["unit"] = "target",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 53,
			["selfPoint"] = "BOTTOM",
			["font"] = "Friz Quadrata TT",
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 15.000045776367,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["use_encounterid"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[4] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 768,
				["zoneIds"] = "",
			},
			["fontSize"] = 15,
			["uid"] = "889o8kqdZGB",
			["shadowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["automaticWidth"] = "Auto",
			["regionType"] = "text",
			["fixedWidth"] = 200,
			["preferToUpdate"] = false,
			["color"] = {
				0, -- [1]
				1, -- [2]
				0.13333333333333, -- [3]
				1, -- [4]
			},
			["semver"] = "1.0.3",
			["displayText_format_p_time_precision"] = 1,
			["shadowYOffset"] = -1,
			["anchorFrameType"] = "SCREEN",
			["wordWrap"] = "WordWrap",
			["justify"] = "LEFT",
			["tocversion"] = 90002,
			["id"] = "Rip Time",
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["frameStrata"] = 1,
			["width"] = 22.999975204468,
			["authorOptions"] = {
			},
			["config"] = {
			},
			["displayText_format_p_time_legacy_floor"] = true,
			["parent"] = "Feral Group",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayText_format_p_time_mod_rate"] = true,
		},
		["Omen of Clarity"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -0.789947509765625,
			["foregroundColor"] = {
				0.9921568627450981, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["textureWrapMode"] = "CLAMP",
			["sameTexture"] = true,
			["url"] = "https://wago.io/-KySiHY1Y/4",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["genericShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["unit"] = "player",
						["duration"] = "1",
						["use_requirePowerType"] = false,
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["powertype"] = 1,
						["spellIds"] = {
						},
						["names"] = {
						},
						["event"] = "Power",
						["subeventSuffix"] = "_CAST_START",
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"Omen of Clarity", -- [1]
						},
						["unit"] = "player",
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 53,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["parent"] = "Feral Group",
			["desaturateForeground"] = false,
			["conditions"] = {
			},
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 250,
			["selfPoint"] = "CENTER",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["use_encounterid"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_exact_spellknown"] = true,
				["spellknown"] = 9634,
				["zoneIds"] = "",
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useAdjustededMax"] = false,
			["fontSize"] = 12,
			["anchorPoint"] = "CENTER",
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["config"] = {
			},
			["startAngle"] = 0,
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["crop"] = 0.41,
			["width"] = 330,
			["blendMode"] = "ADD",
			["alpha"] = 0.9,
			["backgroundTexture"] = "450915",
			["slantMode"] = "INSIDE",
			["tocversion"] = 90002,
			["regionType"] = "progresstexture",
			["color"] = {
			},
			["semver"] = "1.0.3",
			["compress"] = false,
			["id"] = "Omen of Clarity",
			["mirror"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = -0.78997802734375,
			["uid"] = "wRrxstCymAN",
			["inverse"] = false,
			["crop_y"] = 0.41,
			["orientation"] = "VERTICAL",
			["crop_x"] = 0.41,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["backgroundOffset"] = 0,
		},
		["Challending Roar T"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = -1.4998779296875,
			["displayText"] = "%p",
			["yOffset"] = -143.99993896484,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/-KySiHY1Y/4",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"Challenging Roar", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["names"] = {
							"Savage Roar", -- [1]
						},
						["ownOnly"] = true,
						["spellIds"] = {
							52610, -- [1]
						},
						["useName"] = true,
						["useGroup_count"] = false,
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 53,
			["selfPoint"] = "BOTTOM",
			["font"] = "Friz Quadrata TT",
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 16.999996185303,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["use_encounterid"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 768,
				["zoneIds"] = "",
			},
			["fontSize"] = 17,
			["uid"] = "qrPse)dVUR(",
			["shadowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["automaticWidth"] = "Auto",
			["regionType"] = "text",
			["fixedWidth"] = 200,
			["preferToUpdate"] = false,
			["color"] = {
				0.56470588235294, -- [1]
				0.26274509803922, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["semver"] = "1.0.3",
			["displayText_format_p_time_precision"] = 1,
			["shadowYOffset"] = -1,
			["anchorFrameType"] = "SCREEN",
			["wordWrap"] = "WordWrap",
			["justify"] = "LEFT",
			["tocversion"] = 90002,
			["id"] = "Challending Roar T",
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["frameStrata"] = 1,
			["width"] = 23.999982833862,
			["authorOptions"] = {
			},
			["config"] = {
			},
			["displayText_format_p_time_legacy_floor"] = true,
			["parent"] = "Feral Group",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayText_format_p_time_mod_rate"] = true,
		},
		["Combo p 2"] = {
			["color"] = {
				0.023529411764706, -- [1]
				0.023529411764706, -- [2]
				0.023529411764706, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -94.99987792969,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/-KySiHY1Y/4",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["powertype"] = 4,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["unevent"] = "auto",
						["power_operator"] = ">=",
						["event"] = "Power",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["spellIds"] = {
						},
						["use_power"] = true,
						["power"] = "0",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"Cat Form", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 45,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["use_encounterid"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[4] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 768,
				["role"] = {
					["multi"] = {
					},
				},
			},
			["textureWrapMode"] = "CLAMP",
			["mirror"] = false,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["anchorFrameType"] = "SCREEN",
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["discrete_rotation"] = 0,
			["selfPoint"] = "CENTER",
			["semver"] = "1.0.3",
			["tocversion"] = 90002,
			["id"] = "Combo p 2",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["width"] = 45,
			["xOffset"] = -34.999694824219,
			["uid"] = "iu5gPup99OU",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Feral Group",
		},
		["Challenging Roar"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["color"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -95,
			["foregroundColor"] = {
				0.4509803921568628, -- [1]
				0.6274509803921569, -- [2]
				0.4784313725490196, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["xOffset"] = 0,
			["sameTexture"] = true,
			["url"] = "https://wago.io/-KySiHY1Y/4",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"Challenging Roar", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["names"] = {
							"Savage Roar", -- [1]
						},
						["ownOnly"] = true,
						["spellIds"] = {
							52610, -- [1]
						},
						["useName"] = true,
						["useGroup_count"] = false,
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 53,
			["selfPoint"] = "CENTER",
			["parent"] = "Feral Group",
			["backgroundColor"] = {
				0.3921568627451, -- [1]
				0.50196078431373, -- [2]
				0.41960784313726, -- [3]
				0.5, -- [4]
			},
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 20,
			["conditions"] = {
			},
			["crop_y"] = 0.41,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["useAdjustededMax"] = false,
			["backgroundTexture"] = "450915",
			["fontSize"] = 12,
			["startAngle"] = 0,
			["foregroundTexture"] = "369749",
			["uid"] = "5)RWOuXftTN",
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["crop"] = 0.41,
			["authorOptions"] = {
			},
			["blendMode"] = "BLEND",
			["width"] = 200,
			["alpha"] = 1,
			["slantMode"] = "INSIDE",
			["regionType"] = "progresstexture",
			["compress"] = false,
			["anchorPoint"] = "CENTER",
			["semver"] = "1.0.3",
			["tocversion"] = 90002,
			["id"] = "Challenging Roar",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["use_encounterid"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 768,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["inverse"] = false,
			["textureWrapMode"] = "CLAMP",
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.41,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["backgroundOffset"] = 2,
		},
		["Rip De-Buff"] = {
			["user_y"] = 0,
			["compress"] = false,
			["user_x"] = 0,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["adjustedMin"] = 1,
			["yOffset"] = 0,
			["foregroundColor"] = {
				0.52941176470588, -- [1]
				0.047058823529412, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["sameTexture"] = true,
			["url"] = "https://wago.io/-KySiHY1Y/4",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"1079", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["names"] = {
							"Rip", -- [1]
						},
						["ownOnly"] = true,
						["spellIds"] = {
							1079, -- [1]
						},
						["useName"] = true,
						["useGroup_count"] = false,
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["unit"] = "target",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 53,
			["color"] = {
			},
			["selfPoint"] = "CENTER",
			["adjustedMax"] = 25,
			["conditions"] = {
			},
			["parent"] = "Feral Group",
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 278,
			["fontSize"] = 12,
			["crop_y"] = 0,
			["startAngle"] = 0,
			["useAdjustededMax"] = false,
			["textureWrapMode"] = "CLAMP",
			["uid"] = "AHHEx15Lw9F",
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura124",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["use_encounterid"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[4] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 768,
				["zoneIds"] = "",
			},
			["anchorFrameType"] = "SCREEN",
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["alpha"] = 1,
			["blendMode"] = "BLEND",
			["backgroundColor"] = {
				0.023529411764706, -- [1]
				0.023529411764706, -- [2]
				0.023529411764706, -- [3]
				0.5, -- [4]
			},
			["crop"] = 0.41,
			["slantMode"] = "INSIDE",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["anchorPoint"] = "CENTER",
			["smoothProgress"] = true,
			["semver"] = "1.0.3",
			["tocversion"] = 90002,
			["id"] = "Rip De-Buff",
			["backgroundTexture"] = "450915",
			["frameStrata"] = 1,
			["width"] = 400,
			["xOffset"] = 112,
			["config"] = {
			},
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["orientation"] = "VERTICAL",
			["crop_x"] = 0,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["backgroundOffset"] = 0,
		},
		["CP 4"] = {
			["color"] = {
				0.4156862745098, -- [1]
				0, -- [2]
				0.035294117647059, -- [3]
				0.75, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -95,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/-KySiHY1Y/4",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["powertype"] = 4,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["power"] = "4",
						["power_operator"] = ">=",
						["event"] = "Power",
						["use_power"] = true,
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["spellIds"] = {
						},
						["custom_type"] = "status",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"Cat Form", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 50,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["use_encounterid"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[4] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 768,
				["zoneIds"] = "",
			},
			["textureWrapMode"] = "CLAMP",
			["mirror"] = false,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["anchorFrameType"] = "SCREEN",
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
			["discrete_rotation"] = 0,
			["selfPoint"] = "CENTER",
			["semver"] = "1.0.3",
			["tocversion"] = 90002,
			["id"] = "CP 4",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["width"] = 50,
			["xOffset"] = 35,
			["uid"] = "YV4yxge7q58",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Feral Group",
		},
		["Rake Timer"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = -83,
			["displayText"] = "%p",
			["yOffset"] = -98.000030517578,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/-KySiHY1Y/4",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "155722",
						["useGroup_count"] = false,
						["ownOnly"] = true,
						["unit"] = "target",
						["use_tooltip"] = false,
						["auranames"] = {
							"Rake", -- [1]
						},
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Rake", -- [1]
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["name"] = "Rake",
						["use_spellId"] = true,
						["spellIds"] = {
							155722, -- [1]
						},
						["useExactSpellId"] = false,
						["buffShowOn"] = "showOnActive",
						["combineMatches"] = "showLowest",
						["auraspellids"] = {
							"155722", -- [1]
						},
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 53,
			["selfPoint"] = "BOTTOM",
			["font"] = "Friz Quadrata TT",
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 15.000045776367,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["use_encounterid"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[4] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 768,
				["zoneIds"] = "",
			},
			["fontSize"] = 15,
			["uid"] = "z8bmIuVvZUT",
			["shadowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["automaticWidth"] = "Auto",
			["regionType"] = "text",
			["fixedWidth"] = 200,
			["preferToUpdate"] = false,
			["color"] = {
				0, -- [1]
				1, -- [2]
				0.058823529411765, -- [3]
				1, -- [4]
			},
			["semver"] = "1.0.3",
			["displayText_format_p_time_precision"] = 1,
			["shadowYOffset"] = -1,
			["anchorFrameType"] = "SCREEN",
			["wordWrap"] = "WordWrap",
			["justify"] = "LEFT",
			["tocversion"] = 90002,
			["id"] = "Rake Timer",
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["frameStrata"] = 1,
			["width"] = 22.999975204468,
			["authorOptions"] = {
			},
			["config"] = {
			},
			["displayText_format_p_time_legacy_floor"] = true,
			["parent"] = "Feral Group",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayText_format_p_time_mod_rate"] = true,
		},
		["Regrowth"] = {
			["color"] = {
				0, -- [1]
				1, -- [2]
				0.11764705882353, -- [3]
				0.75, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -210,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/-KySiHY1Y/4",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"Regrowth", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["names"] = {
							"Predatory Swiftness", -- [1]
						},
						["ownOnly"] = true,
						["spellIds"] = {
							69369, -- [1]
						},
						["useName"] = true,
						["useGroup_count"] = false,
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 75,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["talent"] = {
					["single"] = 20,
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["use_encounterid"] = true,
				["use_class"] = true,
				["role"] = {
				},
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["use_spellknown"] = true,
				["spellknown"] = 768,
				["zoneIds"] = "",
			},
			["textureWrapMode"] = "CLAMP",
			["mirror"] = false,
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["anchorFrameType"] = "SCREEN",
			["texture"] = "166606",
			["discrete_rotation"] = 0,
			["selfPoint"] = "CENTER",
			["semver"] = "1.0.3",
			["tocversion"] = 90002,
			["id"] = "Regrowth",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["width"] = 75,
			["xOffset"] = 95,
			["uid"] = "g8vGzAVtnjy",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Feral Group",
		},
		["Rake De-Buff"] = {
			["user_y"] = 0,
			["selfPoint"] = "CENTER",
			["user_x"] = 0,
			["color"] = {
			},
			["adjustedMax"] = 15,
			["adjustedMin"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["desaturateBackground"] = false,
			["slanted"] = false,
			["sameTexture"] = true,
			["url"] = "https://wago.io/-KySiHY1Y/4",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "155722",
						["useGroup_count"] = false,
						["ownOnly"] = true,
						["unit"] = "target",
						["use_tooltip"] = false,
						["auranames"] = {
							"Rake", -- [1]
						},
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Rake", -- [1]
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["name"] = "Rake",
						["use_spellId"] = true,
						["spellIds"] = {
							155722, -- [1]
						},
						["useExactSpellId"] = false,
						["buffShowOn"] = "showOnActive",
						["combineMatches"] = "showLowest",
						["auraspellids"] = {
							"155722", -- [1]
						},
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 53,
			["backgroundColor"] = {
				0.023529411764706, -- [1]
				0.015686274509804, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["conditions"] = {
			},
			["authorOptions"] = {
			},
			["desaturateForeground"] = false,
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 278,
			["xOffset"] = -112,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["use_encounterid"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[4] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 768,
				["zoneIds"] = "",
			},
			["uid"] = "9hb4pPZKTwo",
			["useAdjustededMax"] = false,
			["fontSize"] = 12,
			["parent"] = "Feral Group",
			["startAngle"] = 0,
			["width"] = 400,
			["alpha"] = 1,
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["crop"] = 0.41,
			["blendMode"] = "BLEND",
			["crop_y"] = 0,
			["compress"] = false,
			["slantMode"] = "INSIDE",
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura124",
			["preferToUpdate"] = false,
			["textureWrapMode"] = "CLAMP",
			["semver"] = "1.0.3",
			["tocversion"] = 90002,
			["id"] = "Rake De-Buff",
			["mirror"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["backgroundTexture"] = "450915",
			["config"] = {
			},
			["inverse"] = false,
			["foregroundColor"] = {
				0.52941176470588, -- [1]
				0.047058823529412, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["orientation"] = "VERTICAL",
			["crop_x"] = 0,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["backgroundOffset"] = 0,
		},
		["Combo P 4"] = {
			["color"] = {
				0.023529411764706, -- [1]
				0.023529411764706, -- [2]
				0.023529411764706, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -95,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/-KySiHY1Y/4",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["powertype"] = 4,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["unevent"] = "auto",
						["power_operator"] = ">=",
						["event"] = "Power",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["spellIds"] = {
						},
						["use_power"] = true,
						["power"] = "0",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"Cat Form", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 45,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["use_encounterid"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[4] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 768,
				["role"] = {
					["multi"] = {
					},
				},
			},
			["textureWrapMode"] = "CLAMP",
			["mirror"] = false,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["anchorFrameType"] = "SCREEN",
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["discrete_rotation"] = 0,
			["selfPoint"] = "CENTER",
			["semver"] = "1.0.3",
			["tocversion"] = 90002,
			["id"] = "Combo P 4",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["width"] = 45,
			["xOffset"] = 35,
			["uid"] = "E4L1lFtorWZ",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Feral Group",
		},
		["Moonfire"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["color"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["foregroundColor"] = {
				0.50588235294118, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["xOffset"] = 150.00024414063,
			["sameTexture"] = true,
			["url"] = "https://wago.io/-KySiHY1Y/4",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"Moonfire", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["names"] = {
							"Moonfire", -- [1]
						},
						["ownOnly"] = true,
						["spellIds"] = {
							155625, -- [1]
						},
						["useName"] = true,
						["useGroup_count"] = false,
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["unit"] = "target",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 53,
			["selfPoint"] = "CENTER",
			["parent"] = "Feral Group",
			["backgroundColor"] = {
				0.031372549019608, -- [1]
				0.031372549019608, -- [2]
				0.031372549019608, -- [3]
				0.5, -- [4]
			},
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 210,
			["conditions"] = {
			},
			["crop_y"] = 0.41,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["useAdjustededMax"] = false,
			["backgroundTexture"] = "450915",
			["fontSize"] = 12,
			["startAngle"] = 0,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura124",
			["uid"] = "qrHQVpGSnKp",
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["crop"] = 0.41,
			["authorOptions"] = {
			},
			["blendMode"] = "BLEND",
			["width"] = 250,
			["alpha"] = 1,
			["slantMode"] = "INSIDE",
			["regionType"] = "progresstexture",
			["compress"] = false,
			["anchorPoint"] = "CENTER",
			["semver"] = "1.0.3",
			["tocversion"] = 90002,
			["id"] = "Moonfire",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["use_encounterid"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[4] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 768,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["inverse"] = false,
			["textureWrapMode"] = "CLAMP",
			["orientation"] = "VERTICAL",
			["crop_x"] = 0.43,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["backgroundOffset"] = 2,
		},
		["Innervate"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["parent"] = "Feral Group",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["foregroundColor"] = {
				0.1764705882352941, -- [1]
				0.5254901960784314, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["sameTexture"] = true,
			["url"] = "https://wago.io/-KySiHY1Y/4",
			["backgroundColor"] = {
				0.031372549019608, -- [1]
				0.031372549019608, -- [2]
				0.031372549019608, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							155625, -- [1]
						},
						["type"] = "aura2",
						["auranames"] = {
							"Innervate", -- [1]
						},
						["combineMatches"] = "showLowest",
						["names"] = {
							"Moonfire", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 53,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["xOffset"] = -150,
			["desaturateForeground"] = false,
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 210,
			["crop_x"] = 0.43,
			["crop_y"] = 0.41,
			["selfPoint"] = "CENTER",
			["useAdjustededMax"] = false,
			["backgroundTexture"] = "450915",
			["fontSize"] = 12,
			["startAngle"] = 0,
			["color"] = {
			},
			["config"] = {
			},
			["mirror"] = true,
			["useAdjustededMin"] = false,
			["crop"] = 0.41,
			["authorOptions"] = {
			},
			["blendMode"] = "BLEND",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["slantMode"] = "INSIDE",
			["regionType"] = "progresstexture",
			["tocversion"] = 90002,
			["anchorPoint"] = "CENTER",
			["semver"] = "1.0.3",
			["compress"] = false,
			["id"] = "Innervate",
			["textureWrapMode"] = "CLAMP",
			["alpha"] = 1,
			["width"] = 250,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura124",
			["uid"] = "aTcdO4ePfTO",
			["inverse"] = false,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[4] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["zoneIds"] = "",
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 768,
				["use_class_and_spec"] = false,
			},
			["orientation"] = "VERTICAL",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["backgroundOffset"] = 2,
		},
		["CP 2"] = {
			["color"] = {
				0.37647058823529, -- [1]
				0, -- [2]
				0.023529411764706, -- [3]
				0.75, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -95,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/-KySiHY1Y/4",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["powertype"] = 4,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["power"] = "2",
						["power_operator"] = ">=",
						["event"] = "Power",
						["use_power"] = true,
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["spellIds"] = {
						},
						["custom_type"] = "status",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"Cat Form", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 50,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["use_encounterid"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[4] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spellknown"] = 768,
				["zoneIds"] = "",
			},
			["textureWrapMode"] = "CLAMP",
			["mirror"] = false,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["anchorFrameType"] = "SCREEN",
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura72",
			["discrete_rotation"] = 0,
			["selfPoint"] = "CENTER",
			["semver"] = "1.0.3",
			["tocversion"] = 90002,
			["id"] = "CP 2",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["width"] = 50,
			["xOffset"] = -35,
			["uid"] = "ckp)HGHXz(q",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Feral Group",
		},
		["Regrowth Time"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 95,
			["displayText"] = "%p",
			["yOffset"] = -221,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/-KySiHY1Y/4",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"Regrowth", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["names"] = {
							"Predatory Swiftness", -- [1]
						},
						["ownOnly"] = true,
						["spellIds"] = {
							69369, -- [1]
						},
						["useName"] = true,
						["useGroup_count"] = false,
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 53,
			["wordWrap"] = "WordWrap",
			["font"] = "Friz Quadrata TT",
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["load"] = {
				["ingroup"] = {
				},
				["class_and_spec"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["use_encounterid"] = true,
				["use_class"] = true,
				["role"] = {
				},
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["use_spellknown"] = true,
				["spellknown"] = 768,
				["zoneIds"] = "",
			},
			["fontSize"] = 18,
			["shadowXOffset"] = 1,
			["justify"] = "LEFT",
			["automaticWidth"] = "Auto",
			["regionType"] = "text",
			["parent"] = "Feral Group",
			["fixedWidth"] = 200,
			["preferToUpdate"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayText_format_p_time_precision"] = 1,
			["uid"] = "M8WVmFf)bxw",
			["color"] = {
				1, -- [1]
				0, -- [2]
				0.12156862745098, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["semver"] = "1.0.3",
			["tocversion"] = 90002,
			["id"] = "Regrowth Time",
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["shadowYOffset"] = -1,
			["config"] = {
			},
			["displayText_format_p_time_legacy_floor"] = true,
			["selfPoint"] = "BOTTOM",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayText_format_p_time_mod_rate"] = true,
		},
	},
	["lastArchiveClear"] = 1632362392,
	["minimap"] = {
		["hide"] = false,
	},
	["lastUpgrade"] = 1662220622,
	["dbVersion"] = 53,
	["registered"] = {
	},
	["login_squelch_time"] = 10,
	["editor_theme"] = "Monokai",
}
