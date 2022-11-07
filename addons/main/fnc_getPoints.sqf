#include "script_component.hpp"

params ["_pos", "_diameter", "_heightChange"];

getTerrainInfo params ["", "", "_cellSize"];

private _steps = ceil (_diameter / _cellSize);

if ((_steps % 2) isEqualTo 1) then { _steps = _steps - 1; };

private _loopStartPos = [-(_cellSize * _steps) / 2, -(_cellSize * _steps) / 2, 0] vectorAdd _pos;

private _positions = [];

for "_xStep" from 0 to _steps do {
	for "_yStep" from 0 to _steps do {
		private _newPos = [(_cellSize * _xStep), (_cellSize * _yStep), 0] vectorAdd _loopStartPos;

		private _distanceFromCenter = (_newPos distance _pos);

		if (_distanceFromCenter > _diameter) then { continue };

		private _heightDifference = linearConversion [_diameter / 2, 0, _distanceFromCenter, 0, _heightChange, true];

		_newPos set [2, ((getTerrainHeight _newPos) + _heightDifference)];

		_positions pushBack _newPos;
	};
};

_positions