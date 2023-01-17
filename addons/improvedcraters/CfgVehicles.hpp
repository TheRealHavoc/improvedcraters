class CfgVehicles
{
	class Logic;
	class Module_F: Logic
	{
		class AttributesBase
		{
			class Default;
			class Edit;
			class Combo;
			class Checkbox;
			class CheckboxNumber;
			class ModuleDescription;
		};
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

		class Attributes: AttributesBase
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
};
