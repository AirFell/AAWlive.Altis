#include "classControl_Defines.hpp"

class classControl_Dialog
{
	idd= CLASSCONTROL;
	movingenable=true;
	
	class controls 
	{
		class ClassControl_MainBGBOX: BOX
	{
		idc = -1;
		x = 0.275384 * safezoneW + safezoneX;
		y = 0.206329 * safezoneH + safezoneY;
		w = 0.433111 * safezoneW;
		h = 0.520022 * safezoneH;
	};
		class ClassControl_MainBG: RscFrame
	{
		idc = -1;
		x = 0.280384 * safezoneW + safezoneX;
		y = 0.211329 * safezoneH + safezoneY;
		w = 0.423111 * safezoneW;
		h = 0.510022 * safezoneH;
	};
		class ClassControl_MenuTitle: MenuTitle
	{
		idc = -1;
		x = 0.280384 * safezoneW + safezoneX;
		y = 0.210989 * safezoneH + safezoneY;
		w = 0.423111 * safezoneW;
		h = 0.03400115 * safezoneH;
	};
	class ClassControl_Footer: Footer
	{
		idc = -1;
		x = 0.280384 * safezoneW + safezoneX;
		y = 0.653009 * safezoneH + safezoneY;
		w = 0.423111 * safezoneW;
		h = 0.068021 * safezoneH;
	};
	class ClassControl_SideBar: Sidebar
	{
		idc = -1;
		x = 0.280384 * safezoneW + safezoneX;
		y = 0.246 * safezoneH + safezoneY;
		w = 0.0987262 * safezoneW;
		h = 0.40801815 * safezoneH;
	};
	class ClassControl_MenuTitleText: RscStructuredTextLeft
	{
		idc = -1;
		text = "Class Control"; //--- ToDo: Localize;
		x = 0.280384 * safezoneW + safezoneX;
		y = 0.21 * safezoneH + safezoneY;
		w = 0.155146 * safezoneW;
		h = 0.0544024 * safezoneH;
		sizeEx = 1 * GUI_GRID_H;
	};
	class ClassControl_FundsText: RscStructuredText
	{
		idc = FUNDSTEXT;
		text = "Resources"; //--- ToDo: Localize;
		x = 0.43553 * safezoneW + safezoneX;
		y = 0.21 * safezoneH + safezoneY;
		w = 0.267965 * safezoneW;
		h = 0.0544024 * safezoneH;
		sizeEx = 0.5;
	};
	class ClassControl_EngineerButton: RscButton
	{
		idc = ENGINEERBUTTON;
		text = "Engineer"; //--- ToDo: Localize;
		onButtonClick = "[0] execVM 'client\dialogs\classControl\classControl_Populate.sqf'";
		x = 0.279404 * safezoneW + safezoneX;
		y = 0.25518985 * safezoneH + safezoneY;
		w = 0.1 * safezoneW;
		h = 0.047602 * safezoneH;
	};
	class ClassControl_MedicButton: RscButton
	{
		idc = MEDICBUTTON;
		text = "Medic"; //--- ToDo: Localize;
		onButtonClick = "[1] execVM 'client\dialogs\classControl\classControl_Populate.sqf'";
		x = 0.279404 * safezoneW + safezoneX;
		y = 0.3119817 * safezoneH + safezoneY;
		w = 0.1 * safezoneW;
		h = 0.047602 * safezoneH;
	};
	class ClassControl_ReconButton: RscButton
	{
		idc = RECONBUTTON;
		text = "Recon"; //--- ToDo: Localize;
		onButtonClick = "[2] execVM 'client\dialogs\classControl\classControl_Populate.sqf'";
		x = 0.279404 * safezoneW + safezoneX;
		y = 0.36877355 * safezoneH + safezoneY;
		w = 0.1 * safezoneW;
		h = 0.047602 * safezoneH;
	};
		class ClassControl_SniperButton: RscButton
	{
		idc = SNIPERBUTTON;
		text = "Sniper"; //--- ToDo: Localize;
		onButtonClick = "[3] execVM 'client\dialogs\classControl\classControl_Populate.sqf'";
		x = 0.279404 * safezoneW + safezoneX;
		y = 0.4255654 * safezoneH + safezoneY;
		w = 0.1 * safezoneW;
		h = 0.047602 * safezoneH;
	};
		class ClassControl_PilotButton: RscButton
	{
		idc = PILOTBUTTON;
		text = "Pilot"; //--- ToDo: Localize;
		onButtonClick = "[4] execVM 'client\dialogs\classControl\classControl_Populate.sqf'";
		x = 0.279404 * safezoneW + safezoneX;
		y = 0.48235725 * safezoneH + safezoneY;
		w = 0.1 * safezoneW;
		h = 0.047602 * safezoneH;
	};
		class ClassControl_CrewButton: RscButton
	{
		idc = CREWBUTTON;
		text = "Crew"; //--- ToDo: Localize;
		onButtonClick = "[3] execVM 'client\dialogs\classControl\classControl_Populate.sqf'";
		x = 0.279404 * safezoneW + safezoneX;
		y = 0.5391491 * safezoneH + safezoneY;
		w = 0.1 * safezoneW;
		h = 0.047602 * safezoneH;
	};
	class ClassControl_LoadoutDescription: RscText
	{
		idc = LOADOUTLIST;
		type = CT_STRUCTURED_TEXT;
		style = ST_PICTURE;
		text = "fuck this"; //--- ToDo: Localize;
		x = 0.419407 * safezoneW + safezoneX;
		y = 0.25518985 * safezoneH + safezoneY;
		w = 0.24178 * safezoneW;
		h = 0.30401815 * safezoneH;
		size = 0.1;
	};
	class ClassControl_CostText: RscStructuredTextLeft
	{
		idc = COSTTEXT;
		text = "Resources"; //--- ToDo: Localize;
		x = 0.414308 * safezoneW + safezoneX;
		y = 0.60001 * safezoneH + safezoneY;
		w = 0.267965 * safezoneW;
		h = 0.0544024 * safezoneH;
		sizeEx = 0.5;
	};
	class ClassControl_CancelButton: RscButton
	{
		idc = CANCELBUTTON;
		text = "Cancel"; //--- ToDo: Localize;
		onButtonClick = "closeDialog 0;";
		x = 0.429341 * safezoneW + safezoneX;
		y = 0.666981 * safezoneH + safezoneY;
		w = 0.0955931 * safezoneW;
		h = 0.0340016 * safezoneH;
	};
	class ClassControl_PurchaseButton: RscButton
	{
		idc = SELECTBUTTON;
		text = "Select"; //--- ToDo: Localize;
		//onButtonClick = "[] execVM 'client\dialogs\classControl\classControl_Purchase.sqf'";
		x = 0.550445 * safezoneW + safezoneX;
		y = 0.666981 * safezoneH + safezoneY;
		w = 0.0955931 * safezoneW;
		h = 0.0340016 * safezoneH;
	};
};
};

