#include "script_component.hpp"

ADDON = false;

#include "XEH_PREP.hpp"
#include "\a3\ui_f\hpp\defineDIKCodes.inc"

ADDON = true;

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
	["Improved Craters", "Miscellaneous"],
	true,
	1
] call CBA_fnc_addSetting;

[
	"IC_setting_allowDebris",
	"Checkbox",
	["Allow debris", "Allow debris to spawn."],
	["Improved Craters", "Miscellaneous"],
	true,
	1
] call CBA_fnc_addSetting;

[
	"IC_setting_maxDebrisCountPerCrater",
	"SLIDER",
	["Max debris count per crater", "Set the max amount of debris per crater. High numbers can impact performance on larger craters!"],
	["Improved Craters", "Miscellaneous"],
	[1, 100, 6, 0, false],
	1
] call CBA_fnc_addSetting;

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