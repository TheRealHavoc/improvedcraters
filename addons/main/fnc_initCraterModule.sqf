#include "script_component.hpp"

params ["_mode", "_input"];

private _logic = _input # 0;

private _size = parseNumber (_logic getVariable ["Size", "15000"]);
private _pos = getPosASL _logic;

private _positions = [_pos, _size] call FUNC(spawnCrater);