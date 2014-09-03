/*********************************************************#
# @@ScriptName: baseConfig.sqf
# @@Author: Sanguine
# @@Create Date: 2013-09-16 20:40:58
#*********************************************************/

// This tracks which bases infostand the player is interacting with
//currentBase = "";

// Array Parameters
// Text name, classname, Resource cost, Credit Cost



/*
//default array layout
nameofArray = compileFinal str
[
	// "array item types here"
    ["", "", 25,25],
	["", "", 25,25],
	["", "", 25,25],
	["", "", 25,25]
];
*/

lightArray_Tier1 = compileFinal str
[
	// Light Vehicles Tier 1
    ["Quadbike","B_Quadbike_01_F", 25,25],
	["Offroad Armed","B_G_Offroad_01_armed_F", 25,25],
	["Ifrit","O_MRAP_02_F", 25,25],
	["Strider","I_MRAP_03_F", 25,25],
	["Hunter","B_MRAP_01_F", 25,25]
];

lightArray_Tier2 = compileFinal str
[
	// Light Vehicles Tier 2
    ["Hunter HMG","B_MRAP_01_hmg_F", 25,25],
	["Ifrit HMG","O_MRAP_02_hmg_F", 25,25],
	["Strider HMG","I_MRAP_03_hmg_F", 25,25]
];

lightArray_Tier3 = compileFinal str
[
	// Light Vehicles Tier 3
    ["Hunter GMG","B_MRAP_01_gmg_F", 25,25],
	["Ifrit GMG","O_MRAP_02_gmg_F", 25,25],
	["Strider GMG","I_MRAP_03_gmg_F", 25,25]
];

heavyArray_Tier1 = compileFinal str
[
	// heavy Vehicles Tier 1
    ["", "", 25,25],
	["", "", 25,25]
];

heavyArray_Tier2 = compileFinal str
[
	// heavy Vehicles Tier 2
    ["AMV-7 Marshall","B_APC_Wheeled_01_cannon_F", 25,25],
	["AFV-4 Gorgon","I_APC_Wheeled_03_cannon_F", 25,25],
	["MSE-3 Marid","O_APC_Wheeled_02_rcws_F", 25,25]
];

heavyArray_Tier3 = compileFinal str
[
	// heavy Vehicles Tier 3
    ["M2A4 Slammer UP","B_MBT_01_TUSK_F", 25,25],
	["IFV-6a Cheetah","B_APC_Tracked_01_AA_F", 25,25],
	["BTR-K Kamysh","O_APC_Tracked_02_cannon_F", 25,25],
	["FV-720 Mora","I_APC_tracked_03_cannon_F", 25,25],
	["MBT-52 Kuma","I_MBT_03_cannon_F", 25,25]
];

airArray_Tier1 = compileFinal str
[
	// Air Vehicles Tier 1
    ["MH-9 Hummingbird","B_Heli_Light_01_F", 25,25],
	["Po-30 Orca Unarmed","O_Heli_Light_02_unarmed_F", 25,25],
	["CH-49 Mohawk","I_Heli_Transport_02_F", 25,25],
	["WY-55 Hellcat Unarmed","I_Heli_light_03_unarmed_F", 25,25]
];

airArray_Tier2 = compileFinal str
[
	// Air Vehicles Tier 2
    ["AH-9 Pawnee","B_Heli_Light_01_armed_F", 25,25],
	["UH-80 Ghost Hawk","B_Heli_Transport_01_camo_F", 25,25],
	["Po-30 Orca","O_Heli_Light_02_F", 25,25],
	["WY-55 Hellcat","I_Heli_light_03_F", 25,25]
];

airArray_Tier3 = compileFinal str
[
	// Air Vehicles Tier 3
    ["AH-99 Blackfoot","B_Heli_Attack_01_F", 25,25],
	["A-164 Wipeout","B_Plane_CAS_01_F", 25,25],
	["Mi-48 Kajman","O_Heli_Attack_02_F", 25,25],
	["To-199 Neophron","O_Plane_CAS_02_F", 25,25],
	["A-143 Buzzard (CAS)","I_Plane_Fighter_03_CAS_F", 25,25],
	["A-143 Buzzard (AA)","I_Plane_Fighter_03_AA_F", 25,25]
];

allFactoryVehicles = (call lightArray_Tier1 + call lightArray_Tier2 + call lightArray_Tier3 + call heavyArray_Tier2 + call heavyArray_Tier3 + call airArray_Tier1 + call airArray_Tier2 + call airArray_Tier3);