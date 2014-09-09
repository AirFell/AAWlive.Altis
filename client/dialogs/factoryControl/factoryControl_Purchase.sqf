#include "factoryControl_Defines.hpp";
disableSerialization;


_playerMoney = playerCredits;
_size = 0;
_price = 0;
_ObjectsInArea = [];


_Dialog = findDisplay FACTORYCONTROL;
_fundsText = _Dialog displayCtrl FUNDSTEXT;
_vehList = _Dialog displayCtrl VEHICLELIST;

_credits = playerCredits;
_resources = W_TWR1_Resources;





for [{_x=0},{_x<=_size},{_x=_x+1}] do
{
	_selectedItem = lbCurSel _vehList;
	_vehText = _vehList lbText _selectedItem;
	{if(_vehText == _x select 0) then{
		sleep 1;
		_ObjectsInArea = [(getPos W_TWR1_Factory_Spawn1) select 0, (getPos W_TWR1_Factory_Spawn1) select 1] nearObjects 2;
		if(count _ObjectsInArea <= 1) then {
			_resourceCost = _x select 2;
			_creditCost = _x select 3;
			if(_creditCost > _credits) exitWith {hintsilent "You do not have enough Credits"};
			if(_resourceCost > _resources) exitWith {hintsilent "You do not have enough Resources"};
			if(_resourceCost < 1) exitWith {hintsilent "You cant buy this silly."};
				closeDialog 0;
				_spawnVehicle = createVehicle [(_x select 1),getPos W_TWR1_Factory_Spawn1,[], 0,"CAN_COLLIDE"];
				_spawnVehicle setDir (getDir W_TWR1_Factory_Spawn1) + 90;
				clearMagazineCargoGlobal _spawnVehicle;
				clearWeaponCargoGlobal _spawnVehicle;
				sleep 0.5;
				player moveInDriver _spawnVehicle;
				W_TWR1_Resources = W_TWR1_Resources - _resourceCost;
				playerCredits = playerCredits - _creditCost;
				_fundsText ctrlSetStructuredText parseText format["<t size='0.75'>Resources: %1 Credits: %2</t>", _resources, _credits];
				hintsilent "Vehicle purchase successful";
			} else {
			hintsilent "There is another object or player blocking the spawn point!";
		};
	}}forEach allFactoryVehicles;
	
};