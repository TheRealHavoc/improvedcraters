/*
	Scale
*/

[
	"IC_setting_craterDepthScale",
	"SLIDER",
	["Crater depth scale", "Set the scale of the crater depth. Higher the scale, deeper the craters."],
	["Improved Craters", "Scale"],
	[0.1, 4, 1, 1, false],
	1
] call CBA_fnc_addSetting;

[
	"IC_setting_craterDiameterScale",
	"SLIDER",
	["Crater diameter scale", "Set the scale of the crater diameter. Higher the scale, wide the craters."],
	["Improved Craters", "Scale"],
	[0.1, 4, 1, 1, false],
	1
] call CBA_fnc_addSetting;

/*
	Performance
*/

[
	"IC_setting_allowSmallExplosions",
	"Checkbox",
	["Allow small explosions", "Allow small explosions to create craters. This can have a large impact on performance!"],
	["Improved Craters", "Performance"],
	false,
	1
] call CBA_fnc_addSetting;

[
	"IC_setting_allowGroundTextures",
	"Checkbox",
	["Allow ground textures", "Allow ground textures to spawn."],
	["Improved Craters", "Performance"],
	true,
	1
] call CBA_fnc_addSetting;

[
	"IC_setting_limitGroundTextures",
	"Checkbox",
	["Limit amount of ground textures", "Limit the total amount of ground textures on the map."],
	["Improved Craters", "Performance"],
	true,
	1
] call CBA_fnc_addSetting;

[
	"IC_setting_maxGroundTextures",
	"SLIDER",
	["Max ground textures", "Set the max amount of ground textures. When limit is reached, older ground textures will be removed."],
	["Improved Craters", "Performance"],
	[10, 300, 50, 0, false],
	1
] call CBA_fnc_addSetting;

[
	"IC_setting_allowDebris",
	"Checkbox",
	["Allow debris", "Allow debris to spawn."],
	["Improved Craters", "Performance"],
	true,
	1
] call CBA_fnc_addSetting;

[
	"IC_setting_maxDebrisCountPerCrater",
	"SLIDER",
	["Max debris count per crater", "Set the max amount of debris per crater. High numbers can impact performance on larger craters!"],
	["Improved Craters", "Performance"],
	[1, 100, 6, 0, false],
	1
] call CBA_fnc_addSetting;

[
	"IC_setting_limitDebris",
	"Checkbox",
	["Limit amount of debris", "Limit the total amount of debris on the map."],
	["Improved Craters", "Performance"],
	true,
	1
] call CBA_fnc_addSetting;

[
	"IC_setting_maxDebris",
	"SLIDER",
	["Max debris", "Set the max amount of debris. When limit is reached, older debris will be removed."],
	["Improved Craters", "Performance"],
	[10, 300, 50, 0, false],
	1
] call CBA_fnc_addSetting;

/*
	Miscellaneous
*/

[
	"IC_setting_allowAdjustObjects",
	"Checkbox",
	["Adjust objects", "Allow objects on modified points to be moved up/down to keep the same ATL height, this includes flying objects."],
	["Improved Craters", "Miscellaneous"],
	true,
	1
] call CBA_fnc_addSetting;

[
	"IC_setting_debugMode",
	"Checkbox",
	["Debug mode", "Logs events and stuff to the RPT."],
	["Improved Craters", "Debug"],
	false,
	0
] call CBA_fnc_addSetting;