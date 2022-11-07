#include "script_component.hpp"

if (isServer) exitWith {
	"The current client is the server. Exiting initClient script." call FUNC(log);
};