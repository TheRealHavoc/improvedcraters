class CfgVehicles
{
	class Logic;
    class Module_F: Logic
	{
        class ArgumentsBaseUnits;
        class ModuleDescription;
    };

	class ModuleCoverMap_F: Module_F {};

	class IC_ModuleSafeZone: ModuleCoverMap_F
	{
		scope = 2;
		displayName = "Safe Zone";
		category = "IC";
		function = FUNC(initSafeZoneModule);
		functionPriority = 1;
		isGlobal = 2;

		class Arguments: ArgumentsBaseUnits
		{
			class ModuleDescription {};
		};

		class AttributeValues
		{
			IsRectangle = 1;
			size3[] = {100, 100, -1};
		};

		class ModuleDescription
		{
            description = "Set a safezone to prevent projectiles from leaving craters.";
        };
	};

	class IC_ModuleCrater: Module_F
	{
		scope = 2;
		displayName = "Crater";
		category = "IC";
		function = FUNC(initCraterModule);
		functionPriority = 1;
		isGlobal = 2;
		is3DEN = 1;

		class Arguments: ArgumentsBaseUnits
		{
			class Name
			{
				displayName = "Size";
				description = "Size of the crater. A 155mm shell has a size of 15000.";
				tooltip = "Size of the crater. A 155mm shell has a size of 15000.";
				defaultValue = ""15000"";
				typeName = "STRING";
			};
		};

		class ModuleDescription
		{
            description = "Spawn a crater.";
        };
	};
};
