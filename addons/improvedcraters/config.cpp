#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = "Improved Craters";
        author = "Havoc";
        url = "";
        requiredVersion = 2.10;
        requiredAddons[] = {"cba_main", "A3_Modules_F"};
        units[] = {"IC_ModuleSafeZone"};
        weapons[] = {};
    };
};

#include "CfgFactionClasses.hpp"
#include "CfgVehicles.hpp"
#include "CfgEventhandlers.hpp"