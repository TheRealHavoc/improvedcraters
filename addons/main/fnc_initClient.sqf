#include "script_component.hpp"

if (isServer) exitWith {
	"The current client is the server. Exiting initClient script." call FUNC(log);
};

addMissionEventHandler ["ProjectileCreated", {
	params ["_projectile"];

	_projectile addEventHandler ["Explode", {
		params ["_projectile", "_pos", "_velocity"];

		private _size = getNumber (configFile >> "CfgAmmo" >> (typeOf _projectile) >> "indirectHitRange") * getNumber (configFile >> "CfgAmmo" >> (typeOf _projectile) >> "hit");

		// Prevent things like smoke grenades from generating craters
		if (_size <= 1) exitWith {
			format ["Projectile %1 has exploded and was too small with a size of %2", _projectile, _size] call FUNC(log);
		};

		// If explosion is too small, nothing happens.
		if (_size <= 2400 && !improvedcraters_setting_allowSmallExplosions) exitWith {
			format ["Projectile %1 has exploded and was considered a small explosion with a size of %2", _projectile, _size] call FUNC(log);
		};

		format ["Projectile %1 has exploded with a size of %2", _projectile, _size] call FUNC(log);

		[_pos, _size] call FUNC(spawnCrater);
	}];
}];