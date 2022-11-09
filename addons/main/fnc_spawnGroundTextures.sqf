#include "script_component.hpp"

params ["_pos", "_diameter"];

_pos set [2, 0];

if !(IC_setting_allowGroundTextures) exitWith {};

"Creating ground textures." call FUNC(log);

if (isNil "IC_AllGroundTexturesArray") then {
	IC_AllGroundTexturesArray = [];
};

{
	private _decal = createVehicle [_x, _pos, [], 0, "CAN_COLLIDE"];
	_decal setDir (random 360);

	IC_AllGroundTexturesArray append [_decal];
} foreach ["Land_DirtPatch_03_F", "Land_ClutterCutter_large_F"];

private _difference = (count IC_AllGroundTexturesArray) - ((floor IC_setting_maxGroundTextures) * 2);

if (_difference <= 0) exitWith {};

{
	deleteVehicle _x;
} forEach (IC_AllGroundTexturesArray select [0, _difference]);

IC_AllGroundTexturesArray deleteRange [0, _difference];