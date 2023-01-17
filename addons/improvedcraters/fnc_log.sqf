#include "script_component.hpp"

params ["_content"];

if (!IC_setting_debugMode) exitWith {};

diag_log text ("[Improved Craters] " + _content);