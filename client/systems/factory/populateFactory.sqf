disableSerialization;
private ["_switch", "_dialog", "_vehlisttext", "_vehlist","_vehlist1","_vehlist2", "_vehArray","_vehArray1","_vehArray2","_playerSideNum", "_vehClass", "_vehPicture", "_vehlistIndex"];
if (1<2) then {
// Grab access to the controls
_dialog = findDisplay 9000;
_vehlisttext = _dialog displayCtrl 9011;
_vehlist = _dialog displayCtrl 9007;


lbClear _vehlist;
_vehlist lbSetCurSel -1;

switch(_this select 0) do 
{
	case 0: 
	{
		_vehArray = [
	// Light Vehicles Tier 1
    ["Quadbike","B_Quadbike_01_F", 25,25],
	["Offroad Armed","B_G_Offroad_01_armed_F", 25,25],
	["Ifrit","O_MRAP_02_F", 25,25],
	["Strider","I_MRAP_03_F", 25,25],
	["Hunter","B_MRAP_01_F", 25,25]
];
	};
	case 1: 
	{
		_vehArray = [];
	};
	case 2: 
	{
		_vehArray = call airArray_Tier1;
	};
	case 3: 
	{
		_vehArray = call seaArray_Tier1;
	};
	default
	{
		_vehArray = [];
	};
};

// Populate the list
{
	_vehClass = _x select 1;
	
	if (1<2) then
	{
		_vehCfg = configFile >> "CfgVehicles" >> _vehClass;
		
		if (1<2) then
		{
			_vehPicture = getText (configFile >> "CfgVehicles" >> _vehClass >> "picture");
			_vehlistIndex = _vehlist lbAdd format ["%1", _x select 0];
			_vehlist lbSetPicture [_vehlistIndex, _vehPicture];
			_vehlist lbSetData [_vehlistIndex, _vehClass];
		};
	};
} forEach _vehArray;
};
if (1<2) then {
// Grab access to the controls
_dialog = findDisplay 9000;
_vehlist1 = _dialog displayCtrl 9008;

lbClear _vehlist1;
_vehlist1 lbSetCurSel -1;

switch(_this select 0) do 
{
	case 0: 
	{
		_vehArray1 = call lightArray_Tier2;	
	};
	case 1: 
	{
		_vehArray1 = call heavyArray_Tier2;
	};
	case 2: 
	{
		_vehArray1 = call airArray_Tier2;
	};
	case 3: 
	{
		_vehArray1 = call seaArray_Tier2;
	};
	default
	{
		_vehArray1 = [];
	};
};

// Populate the list
{
	_vehClass = _x select 1;
	
	if (1<2) then
	{
		_vehCfg = configFile >> "CfgVehicles" >> _vehClass;
		
		if (1<2) then
		{
			_vehPicture = getText (configFile >> "CfgVehicles" >> _vehClass >> "picture");
			_vehlistIndex = _vehlist1 lbAdd format ["%1", _x select 0];
			_vehlist1 lbSetPicture [_vehlistIndex, _vehPicture];
			_vehlist1 lbSetData [_vehlistIndex, _vehClass];
		};
	};
} forEach _vehArray1;
};
if (1<2) then {
// Grab access to the controls
_dialog = findDisplay 9000;
_vehlisttext = _dialog displayCtrl 9011;
_vehlist2 = _dialog displayCtrl 9009;

lbClear _vehlist2;
_vehlist2 lbSetCurSel -1;

switch(_this select 0) do 
{
	case 0: 
	{
		_vehArray2 = call lightArray_Tier3;	
	};
	case 1: 
	{
		_vehArray2 = call heavyArray_Tier3;
	};
	case 2: 
	{
		_vehArray2 = call airArray_Tier3;
	};
	case 3: 
	{
		_vehArray2 = call seaArray_Tier3;
	};
	default
	{
		_vehArray2 = [];
	};
};

// Populate the list
{
	_vehClass = _x select 1;
	
	if (1<2) then
	{
		_vehCfg = configFile >> "CfgVehicles" >> _vehClass;
		
		if (1<2) then
		{
			_vehPicture = getText (configFile >> "CfgVehicles" >> _vehClass >> "picture");
			_vehlistIndex = _vehlist2 lbAdd format ["%1", _x select 0];
			_vehlist2 lbSetPicture [_vehlistIndex, _vehPicture];
			_vehlist2 lbSetData [_vehlistIndex, _vehClass];
		};
	};
} forEach _vehArray2;
};
