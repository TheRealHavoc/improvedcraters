#include "script_component.hpp"

if (isNil "IC_SafeZones") then {
	IC_SafeZones = [];
};

params ["_logic"];

private _position = getPos _logic;
private _area = _logic getvariable ["objectArea", [0, 0, 0, false, 0]];

if ((_area param [0, 0]) == 0) exitWith {};

private _locationArray = [_logic];
_locationArray append _area;

IC_SafeZones pushBack _locationArray;