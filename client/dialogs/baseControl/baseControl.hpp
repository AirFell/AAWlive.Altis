#include "baseControl_Defines.hpp"

class baseControl_Dialog
{
	idd= BASECONTROL;
	movingenable=true;
	
	class controls 
	{
		class BaseControl_MainBGBOX: BOX
	{
		idc = -1;
		x = 0.275384 * safezoneW + safezoneX;
		y = 0.206329 * safezoneH + safezoneY;
		w = 0.433111 * safezoneW;
		h = 0.520022 * safezoneH;
	};
		class BaseControl_MainBG: RscFrame
	{
		idc = -1;
		x = 0.280384 * safezoneW + safezoneX;
		y = 0.211329 * safezoneH + safezoneY;
		w = 0.423111 * safezoneW;
		h = 0.510022 * safezoneH;
	};
		class BaseControl_MenuTitle: MenuTitle
	{
		idc = -1;
		x = 0.280384 * safezoneW + safezoneX;
		y = 0.210989 * safezoneH + safezoneY;
		w = 0.423111 * safezoneW;
		h = 0.03400115 * safezoneH;
	};
	class BaseControl_Footer: Footer
	{
		idc = -1;
		x = 0.280384 * safezoneW + safezoneX;
		y = 0.653009 * safezoneH + safezoneY;
		w = 0.423111 * safezoneW;
		h = 0.068021 * safezoneH;
	};
	class BaseControl_SideBar: Sidebar
	{
		idc = -1;
		x = 0.280384 * safezoneW + safezoneX;
		y = 0.246 * safezoneH + safezoneY;
		w = 0.0987262 * safezoneW;
		h = 0.40801815 * safezoneH;
	};
	class BaseControl_MenuTitleText: RscStructuredTextLeft
	{
		idc = -1;
		text = "Base Control"; //--- ToDo: Localize;
		x = 0.280384 * safezoneW + safezoneX;
		y = 0.21 * safezoneH + safezoneY;
		w = 0.155146 * safezoneW;
		h = 0.0544024 * safezoneH;
		sizeEx = 1 * GUI_GRID_H;
	};
	class BaseControl_ResourceText: RscStructuredText
	{
		idc = RESOURCETEXT;
		text = "Resources"; //--- ToDo: Localize;
		x = 0.504036 * safezoneW + safezoneX;
		y = 0.21 * safezoneH + safezoneY;
		w = 0.193431 * safezoneW;
		h = 0.0544024 * safezoneH;
		sizeEx = 1 * GUI_GRID_H;
	};
	class BaseControl_BarracksButton: RscButton
	{
		idc = BARRACKSBUTTON;
		text = "Barracks"; //--- ToDo: Localize;
		onButtonClick = "[0] execVM 'client\dialogs\baseControl\baseControl_Populate.sqf'";
		x = 0.279404 * safezoneW + safezoneX;
		y = 0.25518985 * safezoneH + safezoneY;
		w = 0.1 * safezoneW;
		h = 0.047602 * safezoneH;
	};
	class BaseControl_FactoryButton: RscButton
	{
		idc = FACTORYBUTTON;
		text = "Factory"; //--- ToDo: Localize;
		onButtonClick = "[1] execVM 'client\dialogs\baseControl\baseControl_Populate.sqf'";		
		x = 0.279404 * safezoneW + safezoneX;
		y = 0.32319285 * safezoneH + safezoneY;
		w = 0.1 * safezoneW;
		h = 0.047602 * safezoneH;
	};
	class BaseControl_RadarButton: RscButton
	{
		idc = RADARBUTTON;
		text = "Radar"; //--- ToDo: Localize;
		onButtonClick = "[2] execVM 'client\dialogs\baseControl\baseControl_Populate.sqf'";		
		x = 0.279404 * safezoneW + safezoneX;
		y = 0.39215785 * safezoneH + safezoneY;
		w = 0.1 * safezoneW;
		h = 0.047602 * safezoneH;
	};
	class BaseControl_BaseText: RscStructuredText
	{
		idc = BASEBASETEXT;
		text = "Fill Me up generic base shit<br/>asdasdasdasdasd<br/>asddddddddddddddddddddd<br/>DaSDSD"; //--- ToDo: Localize;
		x = 0.419407 * safezoneW + safezoneX;
		y = 0.346995 * safezoneH + safezoneY;
		w = 0.24178 * safezoneW;
		h = 0.238009 * safezoneH;
	};
	class BaseControl_Progress2: RscStructuredText
	{
		idc = PROGRESS2;
		text = "Tier 1"; //--- ToDo: Localize;
		//onLoad = "(_this select 0) call compile preprocessFileLineNumers ""client\dialogs\baseControl\baseControl_Hides.sqf""";
		x = 0.483881 * safezoneW + safezoneX;
		y = 0.25518985 * safezoneH + safezoneY;
		w = 0.0523858 * safezoneW;
		h = 0.0236006 * safezoneH;
		sizeEx = .75 * GUI_GRID_H;
	};
	class BaseControl_Progress1: RscStructuredText
	{
		idc = PROGRESS1;
		text = "Built"; //--- ToDo: Localize;
		//onLoad = "(_this select 0) call compile preprocessFileLineNumers ""client\dialogs\baseControl\baseControl_Hides.sqf""";
		x = 0.424308 * safezoneW + safezoneX;
		y = 0.25518985 * safezoneH + safezoneY;
		w = 0.0523858 * safezoneW;
		h = 0.0236006 * safezoneH;
		sizeEx = .75 * GUI_GRID_H;
	};
	class BaseControl_Progress3: RscStructuredText
	{
		idc = PROGRESS3;
		text = "Tier 2"; //--- ToDo: Localize;
		//onLoad = "(_this select 0) call compile preprocessFileLineNumers ""client\dialogs\baseControl\baseControl_Hides.sqf""";
		x = 0.544641 * safezoneW + safezoneX;
		y = 0.25518985 * safezoneH + safezoneY;
		w = 0.0523858 * safezoneW;
		h = 0.0236006 * safezoneH;
		sizeEx = .75 * GUI_GRID_H;
	};
	class BaseControl_Progress4: RscStructuredText
	{
		idc = PROGRESS4;
		text = "Tier 3"; //--- ToDo: Localize;
		//onLoad = "(_this select 0) call compile preprocessFileLineNumers ""client\dialogs\baseControl\baseControl_Hides.sqf""";
		x = 0.605748 * safezoneW + safezoneX;
		y = 0.25518985 * safezoneH + safezoneY;
		w = 0.0523858 * safezoneW;
		h = 0.0236006 * safezoneH;
		sizeEx = .75 * GUI_GRID_H;
	};
	class BaseControl_BuildButton: RscButtonALT
	{
		idc = BUILDBUTTON;
		text = "Build"; //--- ToDo: Localize;
		//onLoad = "(_this select 0) call compile preprocessFileLineNumers ""client\dialogs\baseControl\baseControl_Hides.sqf""";
		x = 0.439341 * safezoneW + safezoneX;
		y = 0.347436 * safezoneH + safezoneY;
		w = 0.0805931 * safezoneW;
		h = 0.0340016 * safezoneH;
	};
	class BaseControl_UpgradeButton: RscButtonALT
	{
		idc = UPGRADEBUTTON;
		text = "Upgrade"; //--- ToDo: Localize;
		//onLoad = "(_this select 0) []execVM ""client\dialogs\baseControl\baseControl_Hides.sqf""";
		x = 0.560445 * safezoneW + safezoneX;
		y = 0.346993 * safezoneH + safezoneY;
		w = 0.0805931 * safezoneW;
		h = 0.0340016 * safezoneH;
	};
	class BaseControl_DoneButton: RscButton
	{
		idc = -1;
		text = "Done"; //--- ToDo: Localize;
		onButtonClick = "closeDialog 0;";
		x = 0.589787 * safezoneW + safezoneX;
		y = 0.666981 * safezoneH + safezoneY;
		w = 0.080593 * safezoneW;
		h = 0.040802 * safezoneH;
	};
	class BaseControl_DepotDescriptionText: RscStructuredText
	{
		idc = DEPOTDESCRIPTION;
		text = "Fill Me up barracks/factory/radar shit<br/>asdasdasdasdasd<br/>asddddddddddddddddddddd<br/>DaSDSD"; //--- ToDo: Localize;
		//onLoad = "(_this select 0) []execVM ""client\dialogs\baseControl\baseControl_Hides.sqf""";
		x = 0.391199 * safezoneW + safezoneX;
		y = 0.397995 * safezoneH + safezoneY;
		w = 0.2982 * safezoneW;
		h = 0.238009 * safezoneH;
	};
};
};

