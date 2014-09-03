//	@file Version: 1.0
//	@file Name: playerHud.sqf
//	@file Author: 
//	@file Created:
//	@file Args:

#define hud_status_idc 3600
#define hud_vehicle_idc 3601
#define hud_activity_icon_idc 3602
#define hud_activity_textbox_idc 3603

disableSerialization;
private ["_lastHealthReading", "_activityIconOrigPos", "_activityTextboxOrigPos", "_dispUnitInfo"];

_lastHealthReading = 100; // Used to flash the health reading when it changes


while {true} do
{
    private ["_ui","_vitals","_hudVehicle","_health","_tempString","_yOffset","_vehicle"];

    1000 cutRsc ["AAWHud","PLAIN"];
    _ui = uiNameSpace getVariable "AAWHud";
    _vitals = _ui displayCtrl hud_status_idc;
    _hudVehicle = _ui displayCtrl hud_vehicle_idc;
    _hudActivityIcon = _ui displayCtrl hud_activity_icon_idc;
    _hudActivityTextbox = _ui displayCtrl hud_activity_textbox_idc;

    //Calculate Health 0 - 100
    _health = (1 - damage player) * 100;
	
	if (_health > 1) then
	{
		_health = floor _health;
	}
	else
	{
		_health = ceil _health;
	};

    // Flash the health colour on the HUD according to it going up, down or the same
    _healthTextColor = "#FFFFFF";
	
    if (_health != _lastHealthReading) then
	{
        // Health change. Up or down?
        if (_health < _lastHealthReading) then
		{
            // Gone down. Red flash
            _healthTextColor = "#FF1717";
        }
		else
		{
            // Gone up. Green flash
            _healthTextColor = "#17FF17";
        };
    };

    // Make sure we keep a record of the health value from this iteration
    _lastHealthReading = _health;

    // Icons in bottom right
    _str = format ["%1 <img size='0.7' image='client\icons\running_man.paa'/>", 100 - round((getFatigue player) * 100)];
    _str = format["%1<br/>%2 <img size='0.7' image='client\icons\money.paa'/>", _str,  playerCredits];
    _str = format["%1<br/><t color='%2'>%3</t> <img size='0.7' image='client\icons\health.paa'/>", _str, _healthTextColor, _health];

	_vitals ctrlSetStructuredText parseText _str;
    _vitals ctrlCommit 0;
    
    if (player != vehicle player) then
    {
        _tempString = "";
        _yOffset = 0.24;
        _vehicle = assignedVehicle player;

        {
            if ((driver _vehicle == _x) || (gunner _vehicle == _x)) then
            {
                if (driver _vehicle == _x) then
                {
                    _tempString = format ["%1 %2 <img size='0.7' image='client\icons\driver.paa'/><br/>",_tempString, (name _x)];
                    _yOffset = _yOffset + 0.04;
                }
                else
                {
                    _tempString = format ["%1 %2 <img size='0.7' image='client\icons\gunner.paa'/><br/>",_tempString, (name _x)];
                    _yOffset = _yOffset + 0.04;
                }; 
            }
            else
            {
                _tempString = format ["%1 %2 <img size='0.7' image='client\icons\cargo.paa'/><br/>",_tempString, (name _x)];
                _yOffset = _yOffset + 0.04;
            };    
        } forEach crew _vehicle;

        if (isStreamFriendlyUIEnabled) then
        {
        	_tempString = format ["Altis at War<br/>by<br/>KcBattlegrounds<br/>[StreamFriendly:ON]<br/>"];
			_yOffset = _yOffset + 0.20;
        	_hudVehicle ctrlSetStructuredText parseText _tempString;
        }
		else
		{
        	_hudVehicle ctrlSetStructuredText parseText _tempString;
        };
		
        _x = safeZoneX + (safeZoneW * (1 - (0.42 / SafeZoneW)));
        _y = safeZoneY + (safeZoneH * (1 - (_yOffset / SafeZoneH)));
        _hudVehicle ctrlSetPosition [_x, _y, 0.4, 0.65];
        _hudVehicle ctrlCommit 0;
    }
	else
	{
		_tempString = "";
        _yOffset = 0.26;
		_hudVehicle ctrlSetStructuredText parseText _tempString;
        _x = safeZoneX + (safeZoneW * (1 - (0.42 / SafeZoneW)));
        _y = safeZoneY + (safeZoneH * (1 - (_yOffset / SafeZoneH)));
        _hudVehicle ctrlSetPosition [_x, _y, 0.4, 0.65];
        _hudVehicle ctrlCommit 0;
	};

	// Remove unrealistic blur effects
	if (!isNil "BIS_fnc_feedback_damageBlur" && {ppEffectCommitted BIS_fnc_feedback_damageBlur}) then { ppEffectDestroy BIS_fnc_feedback_damageBlur };
	if (!isNil "BIS_fnc_feedback_fatigueBlur" && {ppEffectCommitted BIS_fnc_feedback_fatigueBlur}) then { ppEffectDestroy BIS_fnc_feedback_fatigueBlur };

    sleep 1;
};
