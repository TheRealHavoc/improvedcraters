#include "script_component.hpp"

params ["_center", "_diameter"];

_center set [2, 0];

if !(IC_setting_allowDebris) exitWith { [] };

private _radius = _diameter / 2;

private _debrisClass = "Land_ShellCrater_02_debris_F";

private _pointerPosition = [[[_center, _radius]]] call BIS_fnc_randomPos;
private _positions = [];

private _max = IC_setting_maxDebrisCountPerCrater;

while { _pointerPosition isNotEqualTo [0,0] } do {
	if (_max isEqualTo 0) exitWith {};

	_positions append [_pointerPosition];

	_max = _max - 1;

	_pointerPosition = [[[_center, _radius]], [], { 
		([_positions, _this] call BIS_fnc_nearestPosition) distance _this > 4
	}] call BIS_fnc_randomPos;
};

if ((count _positions) isEqualTo 0) exitWith { [] };

if (isNil "IC_AllDebrisArray") then {
	IC_AllDebrisArray = [];
};

private _newDebrisArray = [];

{
	private _debris = createVehicle [_debrisClass, _x, [], 0, "CAN_COLLIDE"];
	_debris setDir (random 360);
	_debris setVectorUp surfaceNormal position _debris;

	_newDebrisArray append [_debris];
} forEach _positions;

IC_AllDebrisArray append _newDebrisArray;

private _difference = (count IC_AllDebrisArray) - (floor IC_setting_maxDebris);

if (_difference <= 0) exitWith { [] };

{
	deleteVehicle _x;
} forEach (IC_AllDebrisArray select [0, _difference]);

IC_AllDebrisArray deleteRange [0, _difference];

_newDebrisArray