/*******
Sanguine
*******/
//Test Variables
_tier = 3;

#include "baseControl_Defines.hpp";
disableSerialization;

//Grab control of display elements
_Dialog = findDisplay BASECONTROL;
_progress1 =_Dialog displayCtrl PROGRESS1;
_progress2 =_Dialog displayCtrl PROGRESS2;
_progress3 =_Dialog displayCtrl PROGRESS3;
_progress4 =_Dialog displayCtrl PROGRESS4;
_build     =_Dialog displayCtrl BUILDBUTTON;
_upgrade   =_Dialog displayCtrl UPGRADEBUTTON;
_depotDescription =_Dialog displayCtrl DEPOTDESCRIPTION;

//---Set Generic display
		ctrlShow [BASEBASETEXT, false];	
		ctrlShow [PROGRESS1, true];
		ctrlShow [PROGRESS2, true];
		ctrlShow [PROGRESS3, true];
		ctrlShow [PROGRESS4, true];
		ctrlShow [DEPOTDESCRIPTION, true];
		ctrlShow [BUILDBUTTON, true];
		ctrlShow [UPGRADEBUTTON, true];
		_build	ctrlSetBackgroundColor [.729, .513, .176, 1];
		_upgrade ctrlSetBackgroundColor [.729, .513, .176, 1];

//---Set tier specific progress 
if (_tier == 3) then {
_progress1 ctrlSetBackgroundColor [.729, .513, .176, 1];
_progress1 ctrlSetStructuredText parseText format["<t size='0.6'>Built</t>"];
_progress2 ctrlSetBackgroundColor [.729, .513, .176, 1];
_progress2 ctrlSetStructuredText parseText format["<t size='0.6'>Tier 1</t>"];
_progress3 ctrlSetBackgroundColor [.729, .513, .176, 1];
_progress3 ctrlSetStructuredText parseText format["<t size='0.6'>Tier 2</t>"];
_progress4 ctrlSetBackgroundColor [.729, .513, .176, 1];
_progress4 ctrlSetStructuredText parseText format["<t size='0.6'>Tier 3</t>"];
};




switch(_this select 0) do 
{
	case 0: 
	{	
        _build buttonSetAction "hint ""You are trying to build a barracks!""";
		_upgrade buttonSetAction "hint ""You are trying to upgrade a barracks!""";
		_depotDescription ctrlSetStructuredText parseText "<t size='1'>This is where the barracks description bullshit goes!</t>";
	};
	case 1: 
	{
		_build buttonSetAction "hint ""You are trying to build a factory!""";
		_upgrade buttonSetAction "hint ""You are trying to upgrade a barracks!""";
		_depotDescription ctrlSetStructuredText parseText "<t size='1'>This is where the factory description bullshit goes!</t>";
	};
	case 2: 
	{
		_build buttonSetAction "hint ""you are trying to build a radar!""";
		_upgrade buttonSetAction "hint ""You are trying to upgrade a barracks!""";
		_depotDescription ctrlSetStructuredText parseText "<t size='1'>This is where the radar description bullshit goes!</t>";
	};
};