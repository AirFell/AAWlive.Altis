/*******
Sanguine
*******/

#include "baseControl_Defines.hpp";
disableSerialization;

_baseControl = createdialog "baseControl_Dialog";

//Grab control of display elements
_Dialog = findDisplay BASECONTROL;
_resourceText = _Dialog displayCtrl  RESOURCETEXT;
_barracks =_Dialog displayCtrl BARRACKSBUTTON;
_factory =_Dialog displayCtrl FACTORYBUTTON;
_radar =_Dialog displayCtrl RADARBUTTON;

//Variables
_resources = W_TWR1_Resources;


ctrlShow [PROGRESS1, false];
ctrlShow [PROGRESS2, false];
ctrlShow [PROGRESS3, false];
ctrlShow [PROGRESS4, false];
ctrlShow [DEPOTDESCRIPTION, false];
ctrlShow [BUILDBUTTON, false];
ctrlShow [UPGRADEBUTTON, false];

_resourceText ctrlSetStructuredText parseText format["<t size='0.75'>Resources: %1</t>", _resources];
