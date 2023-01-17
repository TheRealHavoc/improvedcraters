#include "script_component.hpp"

params ["_pos"];

private _inSafeZone = false;

{
	if (_pos inArea _x) exitWith { _inSafeZone = true; };
} forEach IC_SafeZones;

_inSafeZone