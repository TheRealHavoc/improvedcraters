#include "script_component.hpp"

params ["_pos", "_diameter"];

_pos set [2, 0];

if !(IC_setting_allowGroundTextures) exitWith {};

"Creating ground textures." call FUNC(log);

{
	private _decal = createVehicle [_x, _pos, [], 0, "CAN_COLLIDE"];
	_decal setDir (random 360);
} foreach ["Land_DirtPatch_03_F", "Land_ClutterCutter_large_F"];