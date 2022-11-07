#include "script_component.hpp"

params ["_content"];

if (!improvedraters_setting_debugMode) exitWith {};

diag_log text ("[Improved Craters] " + _content);