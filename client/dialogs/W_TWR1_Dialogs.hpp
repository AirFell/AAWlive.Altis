/////////////////////////////////////////////////////////
/////////////West Resource Deposit///////////////////////
/////////////////////////////////////////////////////////

class AF_W_TWR1_RescDeposit
{
	idd=-1;
	movingenable=false;

	class controls 
	{

class AF_W_ResourceDeposit_Frame: RscFrame
{
	idc = 1800;
	text = ""; //--- ToDo: Localize;
	x = 0.45874 * safezoneW + safezoneX;
	y = 0.247 * safezoneH + safezoneY;
	w = 0.144411 * safezoneW;
	h = 0.352 * safezoneH;
};
class AF_W_ResourceDeposit_Box: BOX
{
	idc = -1;
	text = ""; //--- ToDo: Localize;
	x = 0.45874 * safezoneW + safezoneX;
	y = 0.247 * safezoneH + safezoneY;
	w = 0.144411 * safezoneW;
	h = 0.352 * safezoneH;
};
class AF_W_Resources: RscText
{
	idc = 1000;
	text = "Loading Resources..."; //--- ToDo: Localize;
	x = 0.469055 * safezoneW + safezoneX;
	y = 0.291 * safezoneH + safezoneY;
	w = 0.123781 * safezoneW;
	h = 0.066 * safezoneH;
};
class AF_W_DepositButton: RscButton
{
	idc = 1600;
	text = "Deposit Resources"; //--- ToDo: Localize;
	x = 0.47937 * safezoneW + safezoneX;
	y = 0.379 * safezoneH + safezoneY;
	w = 0.103151 * safezoneW;
	h = 0.044 * safezoneH;
	action = "[""ResourceDeposit"", ""deposit""]execVM ""client\dialogs\W_TWR1_dialog_functions.sqf""";
};
class AF_W_WithdrawResources: RscButton
{
	idc = 1601;
	text = "Withdraw Resources"; //--- ToDo: Localize;
	x = 0.47937 * safezoneW + safezoneX;
	y = 0.445 * safezoneH + safezoneY;
	w = 0.103151 * safezoneW;
	h = 0.044 * safezoneH;
	action = "[""ResourceDeposit"", ""withdraw""]execVM ""client\dialogs\W_TWR1_dialog_functions.sqf""";
};
class AF_W_ResourceDepositCloseButton: RscButton
{
	idc = 1602;
	text = "Done"; //--- ToDo: Localize;
	x = 0.510315 * safezoneW + safezoneX;
	y = 0.511 * safezoneH + safezoneY;
	w = 0.0412603 * safezoneW;
	h = 0.055 * safezoneH;
	action = "closeDialog 0";
};
	
};
};

/////////////////////////////////////////////////////////
/////////////West TWR1 Control///////////////////////////
/////////////////////////////////////////////////////////

class AF_W_TWR1_CTRL
{
	idd=-1;
	movingenable=false;
	
	class controls 
	{

class AF_W_TWR1_CTRL: RscFrame
{
	idc = 1800;
	text = ""; //--- ToDo: Localize;
	x = 0.381377 * safezoneW + safezoneX;
	y = 0.236 * safezoneH + safezoneY;
	w = 0.195987 * safezoneW;
	h = 0.473 * safezoneH;
};
class AF_W_TWR1_CTRL_BOX: BOX
{
	idc = 1800;
	x = 0.381377 * safezoneW + safezoneX;
	y = 0.236 * safezoneH + safezoneY;
	w = 0.195987 * safezoneW;
	h = 0.473 * safezoneH;
};
class AF_W_Resources: RscText
{
	idc = 1000;
	text = "Loading Resources..."; //--- ToDo: Localize;
	x = 0.391692 * safezoneW + safezoneX;
	y = 0.258 * safezoneH + safezoneY;
	w = 0.180514 * safezoneW;
	h = 0.055 * safezoneH;
};
class AF_W_BarracksArmory: RscText
{
	idc = 1001;
	text = "Barracks and Armory Control"; //--- ToDo: Localize;
	x = 0.386534 * safezoneW + safezoneX;
	y = 0.313 * safezoneH + safezoneY;
	w = 0.185671 * safezoneW;
	h = 0.044 * safezoneH;
};
class AF_W_VehicleFactory: RscText
{
	idc = 1002;
	text = "Vehicle Factory Control"; //--- ToDo: Localize;
	x = 0.386534 * safezoneW + safezoneX;
	y = 0.423 * safezoneH + safezoneY;
	w = 0.185671 * safezoneW;
	h = 0.044 * safezoneH;
};
class AF_W_RadarControl: RscText
{
	idc = 1003;
	text = "Radar Control"; //--- ToDo: Localize;
	x = 0.386534 * safezoneW + safezoneX;
	y = 0.533 * safezoneH + safezoneY;
	w = 0.185671 * safezoneW;
	h = 0.044 * safezoneH;
};
class AF_W_BA_BUILD_BTN: RscButton
{
	idc = 1600;
	text = "Build Barracks"; //--- ToDo: Localize;
	x = 0.396849 * safezoneW + safezoneX;
	y = 0.357 * safezoneH + safezoneY;
	w = 0.0773631 * safezoneW;
	h = 0.044 * safezoneH;
	action = "[""BaseCTRL"", ""BaBuild""]execVM ""client\dialogs\W_TWR1_dialog_functions.sqf""";
};
class AF_W_BA_UPGRADE_BTN: RscButton
{
	idc = 1601;
	text = "Upgrade Barracks"; //--- ToDo: Localize;
	x = 0.484527 * safezoneW + safezoneX;
	y = 0.357 * safezoneH + safezoneY;
	w = 0.0773631 * safezoneW;
	h = 0.044 * safezoneH;
	action = "[""BaseCTRL"", ""BaUpgrade""]execVM ""client\dialogs\W_TWR1_dialog_functions.sqf""";
};
class AF_W_Fact_BUILD_BTN: RscButton
{
	idc = 1602;
	text = "Build Factory"; //--- ToDo: Localize;
	x = 0.396849 * safezoneW + safezoneX;
	y = 0.467 * safezoneH + safezoneY;
	w = 0.0773631 * safezoneW;
	h = 0.044 * safezoneH;
	action = "[""BaseCTRL"", ""FactBuild""]execVM ""client\dialogs\W_TWR1_dialog_functions.sqf""";
};
class AF_W_Fact_UPGRADE_BTN: RscButton
{
	idc = 1603;
	text = "Upgrade Factory"; //--- ToDo: Localize;
	x = 0.484527 * safezoneW + safezoneX;
	y = 0.467 * safezoneH + safezoneY;
	w = 0.0773631 * safezoneW;
	h = 0.044 * safezoneH;
	action = "[""BaseCTRL"", ""FactUpgrade""]execVM ""client\dialogs\W_TWR1_dialog_functions.sqf""";
};
class AF_W_Radar_BUILD_BTN: RscButton
{
	idc = 1604;
	text = "Build Radar"; //--- ToDo: Localize;
	x = 0.396849 * safezoneW + safezoneX;
	y = 0.577 * safezoneH + safezoneY;
	w = 0.0773631 * safezoneW;
	h = 0.044 * safezoneH;
	action = "[""BaseCTRL"", ""RadarBuild""]execVM ""client\dialogs\W_TWR1_dialog_functions.sqf""";
};
class AF_W_Radar_UPGRADE_BTN: RscButton
{
	idc = 1605;
	text = "Upgrade Radar"; //--- ToDo: Localize;
	x = 0.484527 * safezoneW + safezoneX;
	y = 0.577 * safezoneH + safezoneY;
	w = 0.0773631 * safezoneW;
	h = 0.044 * safezoneH;
	action = "[""BaseCTRL"", ""RadarUpgrade""]execVM ""client\dialogs\W_TWR1_dialog_functions.sqf""";
};
class AF_Close_BTN: RscButton
{
	idc = 1606;
	text = "Done"; //--- ToDo: Localize;
	x = 0.45874 * safezoneW + safezoneX;
	y = 0.643 * safezoneH + safezoneY;
	w = 0.0412603 * safezoneW;
	h = 0.055 * safezoneH;
	action = "closeDialog 0";
};
	
};
};