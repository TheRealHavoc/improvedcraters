#include "script_component.hpp"

params ["_pos", "_size"];

[45000, -2, 36] params ["_baseSize", "_baseHeightChange", "_baseDiameter"];

private _heightChange = (linearConversion [1, _baseSize, _size, 0, _baseHeightChange, true]) * IC_setting_craterDepthScale;
private _diameter = (linearConversion [1, _baseSize, _size, 0, _baseDiameter, true]) * (IC_setting_craterDiameterScale / 2);

if (((_pos # 2) + _heightChange) > getTerrainHeight _pos) exitWith {
	format ["Explosion was too high to make an impact on the ground with a height of %1.", (_pos # 2)] call FUNC(log);

	[]
};

format ["Creating crater with a height change of %1 with a diameter of %2", _heightChange, _diameter] call FUNC(log);

private _positions = [_pos, _diameter, _heightChange] call FUNC(getPoints);

setTerrainHeight [_positions, IC_setting_allowAdjustObjects];

private _newDebrisArray = [_pos, _diameter] call FUNC(spawnDebris);

private _newGroundTexturesArray = [_pos, _diameter] call FUNC(spawnGroundTextures);

/*
	returns: [positions : ARRAY, debris : ARRAY, ground textures : ARRAY]
*/
[_positions, _newDebrisArray, _newGroundTexturesArray]