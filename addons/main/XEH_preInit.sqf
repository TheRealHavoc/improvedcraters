#include "script_component.hpp"

ADDON = false;

#include "XEH_PREP.hpp"
#include "\a3\ui_f\hpp\defineDIKCodes.inc"

ADDON = true;

[
	"improvedcraters_setting_craterDepthScale",
	"SLIDER",
	["Crater depth scale", "Set the scale of the crater depth. Higher the scale, deeper the craters."],
	["Improved Craters", "Scale"],
	[0.1, 4, 1, 1, false],
	1
] call CBA_fnc_addSetting;

[
	"improvedcraters_setting_craterDiameterScale",
	"SLIDER",
	["Crater diameter scale", "Set the scale of the crater diameter. Higher the scale, wide the craters."],
	["Improved Craters", "Scale"],
	[0.1, 4, 1, 1, false],
	1
] call CBA_fnc_addSetting;

[
	"improvedcraters_setting_allowSmallExplosions",
	"Checkbox",
	["Allow small explosions", "Allow small explosions to create craters. This can have a large impact on performance!"],
	["Improved Craters", "Performance"],
	false,
	1
] call CBA_fnc_addSetting;

[
	"improvedcraters_setting_allowGroundTextures",
	"Checkbox",
	["Allow ground textures", "Allow ground textures to spawn."],
	["Improved Craters", "Miscellaneous"],
	true,
	1
] call CBA_fnc_addSetting;

[
	"improvedcraters_setting_debugMode",
	"Checkbox",
	["Debug mode", "Logs events and stuff to the RPT."],
	["Improved Craters", "Debug"],
	false,
	0
] call CBA_fnc_addSetting;