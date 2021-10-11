
ItemRackUser = {
	["ButtonSpacing"] = 4,
	["QueuesEnabled"] = {
	},
	["Locked"] = "OFF",
	["MainScale"] = 1,
	["SetMenuWrapValue"] = 3,
	["SetMenuWrap"] = "OFF",
	["CurrentSet"] = "caster",
	["Sets"] = {
		["cat"] = {
			["oldset"] = "caster",
			["equip"] = {
				[16] = "24222::::::::58:::::::::",
				[17] = "13030::::::::58:::::::::",
			},
			["icon"] = 133488,
			["old"] = {
				[16] = "812::::::::58:::::::::",
				[17] = 0,
			},
		},
		["bear"] = {
			["oldset"] = "cat",
			["equip"] = {
				[16] = "868::::::::57:::::::::",
				[17] = "13030::::::::57:::::::::",
			},
			["icon"] = 133488,
			["old"] = {
				[16] = "24222::::::::58:::::::::",
			},
		},
		["~CombatQueue"] = {
			["equip"] = {
			},
		},
		["caster"] = {
			["equip"] = {
				[16] = "812::::::::58:::::::::",
				[17] = 0,
			},
			["oldset"] = "cat",
			["icon"] = 133488,
			["old"] = {
				[16] = "24222::::::::58:::::::::",
				[17] = "13030::::::::58:::::::::",
			},
		},
		["~Unequip"] = {
			["equip"] = {
			},
		},
	},
	["EnableQueues"] = "ON",
	["Queues"] = {
	},
	["Buttons"] = {
	},
	["ItemsUsed"] = {
	},
	["Events"] = {
		["Enabled"] = {
			["caster"] = true,
			["cat"] = true,
			["Bear"] = true,
		},
		["Set"] = {
			["caster"] = "caster",
			["cat"] = "cat",
			["Bear"] = "bear",
		},
	},
	["EnableEvents"] = "ON",
	["Hidden"] = {
	},
	["Alpha"] = 1,
	["MenuScale"] = 0.85,
	["EnablePerSetQueues"] = "OFF",
}
