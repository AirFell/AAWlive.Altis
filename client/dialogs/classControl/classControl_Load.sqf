#include "classControl_Defines.hpp";
disableSerialization;

_classDiag = createdialog "classControl_Dialog";

_Dialog = findDisplay CLASSCONTROL;
_cost = _Dialog displayCtrl COSTTEXT;
_fundsText = _Dialog displayCtrl FUNDSTEXT;

_creditCost = 0;
_credits = playerCredits;

if (playerCredits < 1)then{
	_credits = 0;
};

_fundsText ctrlSetStructuredText parseText format["<t size='1' align='right'>Credits: %1</t>", _credits];
_cost ctrlSetStructuredText parseText format["<t size='1'>Cost: %1</t>", _creditCost];