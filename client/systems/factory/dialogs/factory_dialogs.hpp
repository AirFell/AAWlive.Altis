class AAW_Factory_Diag
{
	idd=9000;
	movingenable=false;
	
	class controls 
	{
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Sanguine, v1.063, #Xefude)
////////////////////////////////////////////////////////

class AAW_FactoryDiag_Frame: RscFrame
{
	idc = 1800;
	x = 0.198179 * safezoneW + safezoneX;
	y = 0.144346 * safezoneH + safezoneY;
	w = 0.604447 * safezoneW;
	h = 0.714028 * safezoneH;
};
class AAW_FactoryDiag_Box: BOX
{
	idc = 1800;
	x = 0.198179 * safezoneW + safezoneX;
	y = 0.144346 * safezoneH + safezoneY;
	w = 0.604447 * safezoneW;
	h = 0.754028 * safezoneH;
};
class AAW_FactoryDiag_MenuName: RscStructuredText
{
	idc = 1100;
	text = "Factory Menu"; //--- ToDo: Localize;
	x = 0.197776 * safezoneW + safezoneX;
	y = 0.142986 * safezoneH + safezoneY;
	w = 0.201482 * safezoneW;
	h = 0.0340013 * safezoneH;
	colorBackground[] = {1,1,1,1};
};
class AAW_FactoryDiag_Resources: RscStructuredText
{
	idc = 9001;
	text = "Resources:"; //--- ToDo: Localize;
	x = 0.399259 * safezoneW + safezoneX;
	y = 0.142986 * safezoneH + safezoneY;
	w = 0.201482 * safezoneW;
	h = 0.0340013 * safezoneH;
	colorBackground[] = {1,1,1,1};
};
class AAW_FactoryDiag_Credits: RscStructuredText
{
	idc = 9002;
	text = "Credits:"; //--- ToDo: Localize;
	x = 0.600741 * safezoneW + safezoneX;
	y = 0.142986 * safezoneH + safezoneY;
	w = 0.201482 * safezoneW;
	h = 0.0340013 * safezoneH;
	colorBackground[] = {1,1,1,1};
};
class AAW_FactoryDiag_buttonLight: RscButton
{
	idc = 9003;
	text = "Light"; //--- ToDo: Localize;
	onButtonClick = "[0] execVM 'client\systems\factory\populateFactory.sqf'";
	x = 0.197776 * safezoneW + safezoneX;
	y = 0.176987 * safezoneH + safezoneY;
	w = 0.151112 * safezoneW;
	h = 0.0340013 * safezoneH;
};
class AAW_FactoryDiag_buttonHeavy: RscButton
{
	idc = 9004;
	text = "Heavy"; //--- ToDo: Localize;
	onButtonClick = "[1] execVM 'client\systems\factory\populateFactory.sqf'";
	x = 0.348888 * safezoneW + safezoneX;
	y = 0.176987 * safezoneH + safezoneY;
	w = 0.151112 * safezoneW;
	h = 0.0340013 * safezoneH;
};
class AAW_FactoryDiag_buttonAir: RscButton
{
	idc = 9005;
	text = "Air"; //--- ToDo: Localize;
	onButtonClick = "[2] execVM 'client\systems\factory\populateFactory.sqf'";
	x = 0.5 * safezoneW + safezoneX;
	y = 0.176987 * safezoneH + safezoneY;
	w = 0.151112 * safezoneW;
	h = 0.0340013 * safezoneH;
};
class AAW_FactoryDiag_buttonSea: RscButton
{
	idc = 9006;
	text = "Sea"; //--- ToDo: Localize;
	onButtonClick = "[3] execVM 'client\systems\factory\populateFactory.sqf'";
	x = 0.651112 * safezoneW + safezoneX;
	y = 0.176987 * safezoneH + safezoneY;
	w = 0.151112 * safezoneW;
	h = 0.0340013 * safezoneH;
};
class AAW_FactoryDiag_listTier1: RscListbox
{
	idc = 9007;
	onLBSelChanged = "[] execvm 'client\systems\factory\vehiclePrice.sqf'";
	x = 0.197776 * safezoneW + safezoneX;
	y = 0.24499 * safezoneH + safezoneY;
	w = 0.201482 * safezoneW;
	h = 0.578022 * safezoneH;
};
class AAW_FactoryDiag_listTier2: RscListbox
{
	idc = 9008;
	onLBSelChanged = "[] execvm 'client\systems\factory\vehiclePrice.sqf'";
	x = 0.399259 * safezoneW + safezoneX;
	y = 0.24499 * safezoneH + safezoneY;
	w = 0.201482 * safezoneW;
	h = 0.578022 * safezoneH;
};
class AAW_FactoryDiag_Cost: RscStructuredTextleft
{
	idc = 9011;
	text = "Cost Resources/Credits:"; //--- ToDo: Localize;
	x = 0.197776 * safezoneW + safezoneX;
	y = 0.82201 * safezoneH + safezoneY;
	w = 0.501482 * safezoneW;
	h = 0.0340013 * safezoneH;
};
class AAW_FactoryDiag_listTier3: RscListbox
{
	idc = 9009;
	onLBSelChanged = "[] execvm 'client\systems\factory\vehiclePrice.sqf'";
	x = 0.600741 * safezoneW + safezoneX;
	y = 0.24499 * safezoneH + safezoneY;
	w = 0.201482 * safezoneW;
	h = 0.578022 * safezoneH;
};
class AAW_FactoryDiag_Purchase: RscButton
{
	idc = 9010;
	text = "Purchase"; //--- ToDo: Localize;
	x = 0.560445 * safezoneW + safezoneX;
	y = 0.860013 * safezoneH + safezoneY;
	w = 0.120889 * safezoneW;
	h = 0.0340013 * safezoneH;
};
class AAW_FactoryDiag_Cancel: RscButton
{
	idc = 1605;
	text = "Cancel"; //--- ToDo: Localize;
	onButtonClick = "closeDialog 0;";
	x = 0.318666 * safezoneW + safezoneX;
	y = 0.860013 * safezoneH + safezoneY;
	w = 0.120889 * safezoneW;
	h = 0.0340013 * safezoneH;
};
class AAW_FactoryDiag_textTier1: RscStructuredText
{
	idc = 1103;
	text = "Tier One"; //--- ToDo: Localize;
	x = 0.197776 * safezoneW + safezoneX;
	y = 0.210989 * safezoneH + safezoneY;
	w = 0.201482 * safezoneW;
	h = 0.0340013 * safezoneH;
};
class AAW_FactoryDiag_textTier2: RscStructuredText
{
	idc = 1104;
	text = "Tier Two"; //--- ToDo: Localize;
	x = 0.399259 * safezoneW + safezoneX;
	y = 0.210989 * safezoneH + safezoneY;
	w = 0.201482 * safezoneW;
	h = 0.0340013 * safezoneH;
};
class AAW_FactoryDiag_textTier3: RscStructuredText
{
	idc = 1105;
	text = "Tier Three"; //--- ToDo: Localize;
	x = 0.600741 * safezoneW + safezoneX;
	y = 0.210989 * safezoneH + safezoneY;
	w = 0.201482 * safezoneW;
	h = 0.0340013 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

	
	
};
};

