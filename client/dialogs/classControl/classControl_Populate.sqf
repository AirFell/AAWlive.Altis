#include "classControl_Defines.hpp";
disableSerialization;

_switch = _this select 0;
_playerSide = str(playerSide);

_Dialog = findDisplay CLASSCONTROL;
_picture = _Dialog displayCtrl LOADOUTPIC;

		if(_playerSide == "WEST") then {
			switch (_switch) do 
			{
				case 0: 
				{
					_classType = "B_engineer_F";
					_classPicture = getText (configFile >> "cfgVehicles" >>  _classType >> "picture");
					_picture ctrlSetStructuredText parseText format["<img size='.1' image='%1'/>", _classPicture];
					hint "U Clik engy";
				};
				case 1: 
				{
					_classType = "B_medic_F";
					hint "U Clik Medi";
				};
				case 2: 
				{
					_classType = "B_recon_F";
					hint "U Clik conz";
				};
				case 3: 
				{	
					_classType = "B_sniper_F";
					hint "WezLy SnIpeZX";
				};
				case 4: 
				{
					_classType = "B_Helipilot_F";
					hint "Ya But u cantz runz trainz";
				};
				case 5: 
				{
					_classType = "B_crew_F";
					hint "Maybiez can runz trainz";
				};
			};
		};
		if(_playerSide == "EAST") then {
			switch (_switch) do 
			{
				case 0: 
				{
					_classType = "O_engineer_F";
					hint "U Clik engy";
				};
				case 1: 
				{
					_classType = "O_medic_F";
					hint "U Clik Medi";
				};
				case 2: 
				{
					_classType = "O_soldierU_F";
					hint "U Clik conz";
				};
				case 3: 
				{	
					_classType = "O_sniper_F";
					hint "WezLy SnIpeZX";
				};
				case 4: 
				{
					_classType = "O_Helipilot_F";
					hint "Ya But u cantz runz trainz";
				};
				case 5: 
				{
					_classType = "O_crew_F";
					hint "Maybiez can runz trainz";
				};
			};
		};
		if(_playerSide == "GUER") then {
			switch (_switch) do 
			{
				case 0: 
				{
					_classType = "I_engineer_F";
					hint "U Clik engy";
				};
				case 1: 
				{
					_classType = "I_medic_F";
					hint "U Clik Medi";
				};
				case 2: 
				{
					_classType = "I_G_Soldier_SL_F";
					hint "U Clik conz";
				};
				case 3: 
				{	
					_classType = "I_sniper_F";
					hint "WezLy SnIpeZX";
				};
				case 4: 
				{
					_classType = "I_Helipilot_F";
					hint "Ya But u cantz runz trainz";
				};
				case 5: 
				{
					_classType = "I_crew_F";
					hint "Maybiez can runz trainz";
				};
			};
		};


//_classPicture = getText (configFile >> "cfgVehicles" >> _classType >> "picture");
//_picture ctrlSetStructuredText parseText format["<t align='center'><img size='5' image='%1'/></t><br/>", _classPicture];
//hint parseText format["<t align='center'><img size='5' image='%1'/></t><br/>", _classPicture];


