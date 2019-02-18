
AdiBagsDB = {
	["profileKeys"] = {
		["Arodarin - Kilrogg"] = "Default",
		["Ahriak - Kilrogg"] = "Default",
		["Fhayup - Area 52"] = "Default",
		["Tethock - Stormrage"] = "Default",
		["Kummies - Kilrogg"] = "Default",
		["Dulgan - Kilrogg"] = "Default",
		["Diuhreeuh - Kilrogg"] = "Default",
		["Gudgrul - Trollbane"] = "Default",
		["Fhayup - Kilrogg"] = "Default",
		["Ghengar - Kilrogg"] = "Default",
		["Bewyah - Kilrogg"] = "Default",
		["Lasmorpse - Kilrogg"] = "Default",
		["Fhartlord - Area 52"] = "Default",
		["Abixik - Kilrogg"] = "Default",
		["Fhayrin - Area 52"] = "Default",
		["Delaneth - Kilrogg"] = "Default",
		["Derastre - Kilrogg"] = "Default",
		["Girnaron - Kilrogg"] = "Default",
		["Ecksdee - Kilrogg"] = "Default",
		["Arodarin - Area 52"] = "Default",
		["Fhayeet - Area 52"] = "Default",
		["Ecksie - Kilrogg"] = "Default",
		["Poonpoonpoon - Kilrogg"] = "Default",
	},
	["namespaces"] = {
		["ItemLevel"] = {
		},
		["FilterOverride"] = {
			["profiles"] = {
				["Default"] = {
					["version"] = 3,
					["overrides"] = {
						[138019] = "Miscellaneous#Miscellaneous",
					},
				},
			},
		},
		["ItemCategory"] = {
			["profiles"] = {
				["Default"] = {
					["splitBySubclass"] = {
						["Consumable"] = false,
						["Tradeskill"] = false,
						["Miscellaneous"] = false,
					},
				},
			},
		},
		["NewItem"] = {
			["profiles"] = {
				["Default"] = {
					["glowColor"] = {
						0.929411764705882, -- [1]
						nil, -- [2]
						0.984313725490196, -- [3]
						0.700000017881393, -- [4]
					},
					["ignoreJunk"] = true,
					["glowScale"] = 1.65,
				},
			},
		},
		["AdiBags_TooltipInfo"] = {
		},
		["MoneyFrame"] = {
		},
		["CurrencyFrame"] = {
			["profiles"] = {
				["Default"] = {
					["shown"] = {
						["Ancient Mana"] = false,
						["Nethershard"] = false,
						["Timeworn Artifact"] = false,
						["Sightless Eye"] = false,
						["Lesser Charm of Good Fortune"] = false,
						["Curious Coin"] = false,
						["Order Resources"] = false,
						["Veiled Argunite"] = false,
						["Legionfall War Supplies"] = false,
						["Wakening Essence"] = false,
						["Garrison Resources"] = false,
						["Seal of Broken Fate"] = false,
						["Timewarped Badge"] = false,
					},
					["hideZeroes"] = false,
				},
			},
		},
		["DataSource"] = {
		},
		["ItemSets"] = {
		},
		["Junk"] = {
		},
		["Equipment"] = {
		},
	},
	["global"] = {
		["muteBugGrabber"] = true,
	},
	["profiles"] = {
		["Default"] = {
			["virtualStacks"] = {
				["others"] = true,
				["stackable"] = true,
				["incomplete"] = true,
			},
			["columnWidth"] = {
				["Backpack"] = 6,
			},
			["modules"] = {
				["ItemLevel"] = false,
			},
			["skin"] = {
				["BackpackColor"] = {
					nil, -- [1]
					nil, -- [2]
					nil, -- [3]
					0.745748102664948, -- [4]
				},
				["background"] = "Blizzard Dialog Background",
				["borderWidth"] = 10,
			},
			["bagFont"] = {
				["r"] = 0.999997794628143,
				["b"] = 0.999997794628143,
				["g"] = 0.999997794628143,
				["size"] = 19,
			},
			["positions"] = {
				["anchor"] = {
					["xOffset"] = -43,
					["yOffset"] = 265,
				},
				["Bank"] = {
					["xOffset"] = 137.651290893555,
					["yOffset"] = -332.5712890625,
				},
				["Backpack"] = {
					["xOffset"] = -98.3157958984375,
					["yOffset"] = 268.634460449219,
				},
			},
			["compactLayout"] = true,
			["rightClickConfig"] = false,
			["autoDeposit"] = true,
			["scale"] = 1,
			["positionMode"] = "manual",
			["hideAnchor"] = true,
		},
	},
}
