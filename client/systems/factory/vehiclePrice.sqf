//	@file Version: 1.0
//	@file Name: vehicleInfo.sqf
//	@file Author: [KoS] His_Shadow, AgentRev
//	@file Created: 1/09/2013 05:13
//	@file Args: [vehicle_type]


disableSerialization;
private ["_veh_type", "_price", "_dialog", "_vehlist", "_vehText", "_picture", "_creditPrice", "_itemIndex", "_itemText", "_itemData", "_weap_type", "_resourcePrice"];

//Initialize Values
_veh_type = "";
_picture = "";
_resourcePrice = 0;
_creditPrice = 0;




// Grab access to the controls
_dialog = findDisplay 9000;
_vehlist = _dialog displayCtrl 9007;
_vehText = _dialog displayCtrl 9011;

//Get Selected Item
_itemIndex = lbCurSel _vehlist;
_itemText = _vehlist lbText _itemIndex;
_itemData = _vehlist lbData _itemIndex;

_vehText ctrlSetText "";

{	
	if (_itemText == _x select 0 && _itemData == _x select 1) then
	{
		_weap_type = _x select 1; 
		_resourcePrice = _x select 2;
		_creditPrice = _x select 3;
		_vehText ctrlSetText format ["Cost Resources/Credits: %1/%2", _resourcePrice, _creditPrice];	
	};
} forEach allFactoryVehicles;

