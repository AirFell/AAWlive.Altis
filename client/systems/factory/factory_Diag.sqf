disableSerialization;


_factoryDiag = createdialog "AAW_Factory_diag";

_Dialog = findDisplay 9000;
_resourceText = _Dialog displayCtrl 9001;
_creditText = _Dialog displayCtrl 9002;
_credits = playerCredits;
_resources = W_TWR1_Resources;
/*
_lightButton = _Dialog displayCtrl FACTORYDIAG_BUTTONLIGHT;	
_heavyButton = _Dialog displayCtrl FACTORYDIAG_BUTTONHEAVY;
_airButton = _Dialog displayCtrl FACTORYDIAG_BUTTONAIR;	
_waterButton = _Dialog displayCtrl FACTORYDIAG_BUTTONWATER;
http://www.armaholic.com/forums.php?m=posts&q=29336&n=last#bottom
*/



_creditText ctrlSetStructuredText parseText format["Credits: %1", _credits];

if (W_TWR1_Resources < 1)then{
_resourceText ctrlSetStructuredText parseText format["Resources: 0"];
}else{
_resourceText ctrlSetStructuredText parseText format["Resources: %1", _resources];
};



