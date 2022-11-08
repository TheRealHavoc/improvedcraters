#include "script_component.hpp"

ADDON = false;

#include "XEH_PREP.hpp"
#include "\a3\ui_f\hpp\defineDIKCodes.inc"

ADDON = true;

[
	"improvedcraters_setting_craterScale",
	"SLIDER",
	["Crater size scale", "Set the scale of the crater size. Higher the scale, bigger the craters."],
	["Improved Craters"],
	[1, 4, 1, 1, false],
	1
] call CBA_fnc_addSetting;

[
	"improvedcraters_setting_allowSmallExplosions",
	"Checkbox",
	["Allow small explosions", "Allow small explosions to create craters. This can have a large impact on performance!"],
	["Improved Craters"],
	false,
	1
] call CBA_fnc_addSetting;

[
	"improvedcraters_setting_allowGroundTextures",
	"Checkbox",
	["Allow ground textures", "Allow ground textures to spawn."],
	["Improved Craters"],
	true,
	1
] call CBA_fnc_addSetting;

[
	"improvedcraters_setting_debugMode",
	"Checkbox",
	["Debug mode", "Turn on debug mode."],
	["Improved Craters"],
	false,
	0
] call CBA_fnc_addSetting;