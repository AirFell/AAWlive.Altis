//NOTE: Check counter if statements before launching live version.

//Test Addaction
player addaction [
	"Enable Self-Destruct Sequence",
	{
		diag_log "Siren Started.";
		W_TWR1_SelfDestruct = 1;
		publicVariable "W_TWR1_SelfDestruct";
		//how long do we want until the "bomb" goes off?
		for [{_lc = 0},{_lc < 30},{_lc = _lc +1}] do{
			playSound3D ["A3\Sounds_F\sfx\siren.wss", W_TWR1, false, getPos W_TWR1, 5, 1, 500];
			sleep 2;
		};

		_objectsList = nearestObjects [getPos W_TWR1, ["Static","Thing"], 500];
		{
			_x setDamage 1;
		}forEach _objectsList;
		sleep 30;
		//reset tower things to 0 as if it hasn't been built yet.
		W_TWR1_SelfDestruct = 0;
		W_TWR1_Resources = 0;
		W_TWR1_Counter = 0;
		W_TWR1_Barracks_Counter = 0;
		W_TWR1_Factory_Counter = 0;
		W_TWR1_Radar_Counter = 0;
		Existing_Tower_Array = Existing_Tower_Array - [W_TWR1];
		publicVariable "W_TWR1_SelfDestruct";
		publicVariable "W_TWR1_Resources";
		publicVariable "W_TWR1_Counter";
		publicVariable "W_TWR1_Barracks_Counter";
		publicVariable "W_TWR1_Factory_Counter";
		publicVariable "W_TWR1_Radar_Counter";
		publicVariable "Existing_Tower_Array";
		
		diag_log "Objects damaged. Counters, resources, and array reset.";
		diag_log format["Tower Array: %1", Existing_Tower_Array];
	},
	nil, 1, True, True, "", "(player distance W_TWR1_SELF_DESTRUCT) < 3"
];

/*
//Test Addaction
if (W_TWR1_SelfDestruct > 0) then {
	player addaction [
		"Disable Self-Destruct Sequence",
		{
			W_TWR1_SelfDestruct = 0;
			diag_log "Self-Destruct disabled.";
			publicVariable "W_TWR1_SelfDestruct";
		},
		nil, 1, True, True, "", "(player distance W_TWR1_SELF_DESTRUCT) < 3"
	];
};
*/

/*
//Launch DaChoppa! -For Test Purposes
player addAction [
	"Get to Da Choppa!",
	{
		_position = position player findEmptyPosition [0, 75];
		_daChoppa = createVehicle ["I_Heli_light_03_F", _position, [], 0, "NONE"];
	}
];
*/

/*
//Build Test Truck full of barrels.
player addaction [
	"Build Test Barrel Truck",
	{
		_pos = position player;
		_newPos = [_pos, 0, 15, 15, 0, 10, 0] call BIS_fnc_findSafePos;
		Truck_1 = createVehicle ["C_Van_01_transport_F", _newPos, [], 0, "None"];

		_Xstep1 = -0.6;
		_Xstep2 = -0.6;
		_number = floor(random 6) + 1;

		while {_number > 0} do {
			if (_number < 4) then {
				_dir = floor(random 360);
				_tPos = [_Xstep1, -1.1, -0.175];
	
				_barrel = createVehicle ["Land_MetalBarrel_F", _tPos, [], 0, "NONE"];
				_barrel attachTo [Truck_1, _tPos];
				_barrel setDir _dir;
				_Xstep1 = _Xstep1 + 0.6;
				_number = _number - 1;
			} else {
				_dir = floor(random 360);
				_tPos = [_Xstep2, -2.5, -0.175];
	
				_barrel = createVehicle ["Land_MetalBarrel_F", _tPos, [], 0, "NONE"];
				_barrel attachTo [Truck_1, _tPos];
				_barrel setDir _dir;
				_Xstep2 = _Xstep2 + 0.6;
				_number = _number - 1;
			};
		};
	}
];
*/

//Test addaction to see player credits
player addAction [
	"Show Credits",
	{
		hint format["You have %1 credits.", playerCredits];
	}
];

//////////////////////////////////////////////////////////////
////////////////Tower 1 (MOB) addActions////////////////////
//////////////////////////////////////////////////////////////

//addaction for Tower 1 resource deposit
player addAction [
	"Resource Controls",
	{
	createDialog "AF_W_TWR1_RescDeposit";
	sleep 1;
	ctrlSetText[1000, format["Resources = %1", W_TWR1_Resources]]
	},
	nil, 1, True, True, "", "(player distance W_TWR1_RescDeposit) < 3"
];

//addaction for Tower 1 Base Control
player addAction ["Access Base Controls", "client\dialogs\baseControl\baseControl_Load.sqf", nil, 1, True, True, "", "(player distance W_TWR1_BaseCTRL) < 3"];


//addaction for Tower 1 vehicle factory control (currently in a test method)
player addAction [
	"HEMTT_West_TWR2",
	{
//	createDialog "";
	if (isNil "HEMTT_West_TWR2") then {
		_dir = getDir W_TWR1_Factory_Ctrl;
		_pos = [getPos W_TWR1_Factory_Spawn1 select 0, getPos W_TWR1_Factory_Spawn1 select 1, 0];
		_truck = createVehicle ["B_Truck_01_box_F", _pos, [], 0, "None"];
		_truck setDir _dir;
		_truck setPos _pos;
		_truck setVehicleVarName "HEMTT_West_TWR2";
		publicVariable "HEMTT_West_TWR2";
	} else {
		hint "Truck is already active somewhere...";
	}
//	ctrlSetText[1000, format["Resources = %1", W_TWR1_Resources]]
	},
	nil, 1, True, True, "", "(player distance W_TWR1_Factory_Ctrl) < 3"
];
player addAction ["Access Factory Controls", "client\dialogs\factoryControl\factoryControl_Load.sqf", nil, 1, True, True, "", "(player distance W_TWR1_Factory_Ctrl) < 3"];

//addaction for Tower 1 barracks/armory control
player addAction [
	"Access Armory",
	{
//	createDialog "";
	hint "Feature needed!";
	sleep 1;
//	ctrlSetText[1000, format["Resources = %1", W_TWR1_Resources]]
	},
	nil, 1, True, True, "", "(player distance W_TWR1_Barracks_Ctrl) < 3"
];


//////////////////////////////////////////////////////////////
////////////////Tower 2 (FOB 1) addActions////////////////////
//////////////////////////////////////////////////////////////

//addaction for Tower 2 resource deposit
player addAction [
	"Resource Controls",
	{
	createDialog "AF_W_TWR2_RescDeposit";
	sleep 1;
	ctrlSetText[1000, format["Resources = %1", W_TWR2_Resources]]
	},
	nil, 1, True, True, "", "(player distance W_TWR2_RescDeposit) < 3"
];

//addaction for Tower 1 Base Control
player addAction [
	"Access Base Controls",
	{
	createDialog "AF_W_TWR2_CTRL";
	sleep 1;
	ctrlSetText[1000, format["Resources = %1", W_TWR1_Resources]]
	},
	nil, 1, True, True, "", "(player distance W_TWR2_BaseCTRL) < 3"
];

//addaction for Tower 1 vehicle factory control (currently in a test method)
player addAction [
	"Access Vehicle Factory",
	{
//	createDialog "";
	if (isNil "HEMTT_West_TWR3") then {
		_pos = getMarkerPos "W_TWR2_Marker";
		HEMTT_West_TWR2 = createVehicle ["B_Truck_01_box_F", _pos, [], 0, "None"];
		HEMTT_West_TWR2 setVehicleVarName "HEMTT_West_TWR3";
		publicVariable "HEMTT_West_TWR3";
	} else {
		hint "Truck is already active somewhere...";
	}
//	ctrlSetText[1000, format["Resources = %1", W_TWR1_Resources]]
	},
	nil, 1, True, True, "", "(player distance W_TWR2_Factory_Ctrl) < 3"
];

//addaction for Tower 1 barracks/armory control
player addAction [
	"Access Armory",
	{
//	createDialog "";
	hint "Feature needed!";
	sleep 1;
//	ctrlSetText[1000, format["Resources = %1", W_TWR1_Resources]]
	},
	nil, 1, True, True, "", "(player distance W_TWR2_Barracks_Ctrl) < 3"
];

//////////////////////////////////////////////////////////////
////////////////Tower 3 (FOB 2) addActions////////////////////
//////////////////////////////////////////////////////////////

//addaction for Tower 2 resource deposit
player addAction [
	"Resource Controls",
	{
	createDialog "AF_W_TWR3_RescDeposit";
	sleep 1;
	ctrlSetText[1000, format["Resources = %1", W_TWR3_Resources]]
	},
	nil, 1, True, True, "", "(player distance W_TWR3_RescDeposit) < 3"
];

//addaction for Tower 1 Base Control
player addAction [
	"Access Base Controls",
	{
	createDialog "AF_W_TWR3_CTRL";
	sleep 1;
//	ctrlSetText[1000, format["Resources = %1", W_TWR1_Resources]]
	},
	nil, 1, True, True, "", "(player distance W_TWR3_BaseCTRL) < 3"
];

//addaction for Tower 1 vehicle factory control (currently in a test method)
player addAction [
	"Access Vehicle Factory",
	{
//	createDialog "";
	if (isNil "HEMTT_West_TWR4") then {
		_pos = getMarkerPos "W_TWR3_Marker";
		HEMTT_West_TWR2 = createVehicle ["B_Truck_01_box_F", _pos, [], 0, "None"];
		HEMTT_West_TWR2 setVehicleVarName "HEMTT_West_TWR4";
		publicVariable "HEMTT_West_TWR4";
	} else {
		hint "Truck is already active somewhere...";
	}
//	ctrlSetText[1000, format["Resources = %1", W_TWR1_Resources]]
	},
	nil, 1, True, True, "", "(player distance W_TWR3_Factory_Ctrl) < 3"
];

//addaction for Tower 1 barracks/armory control
player addAction [
	"Access Armory",
	{
//	createDialog "";
	hint "Feature needed!";
	sleep 1;
//	ctrlSetText[1000, format["Resources = %1", W_TWR1_Resources]]
	},
	nil, 1, True, True, "", "(player distance W_TWR3_Barracks_Ctrl) < 3"
];

//////////////////////////////////////////////////////////////
////////////////Tower 4 (FOB 3) addActions////////////////////
//////////////////////////////////////////////////////////////

//addaction for Tower 2 resource deposit
player addAction [
	"Resource Controls",
	{
	createDialog "AF_W_TWR4_RescDeposit";
	sleep 1;
	ctrlSetText[1000, format["Resources = %1", W_TWR4_Resources]]
	},
	nil, 1, True, True, "", "(player distance W_TWR4_RescDeposit) < 3"
];

//addaction for Tower 1 Base Control
player addAction [
	"Access Base Controls",
	{
	createDialog "AF_W_TWR4_CTRL";
	sleep 1;
//	ctrlSetText[1000, format["Resources = %1", W_TWR1_Resources]]
	},
	nil, 1, True, True, "", "(player distance W_TWR4_BaseCTRL) < 3"
];

/*
//addaction for Tower 1 vehicle factory control (currently in a test method)
player addAction [
	"Access Vehicle Factory",
	{
//	createDialog "";
	if (isNil "HEMTT_West_TWR4") then {
		_pos = getMarkerPos "W_TWR4_Marker";
		HEMTT_West_TWR2 = createVehicle ["B_Truck_01_box_F", _pos, [], 0, "None"];
		HEMTT_West_TWR2 setVehicleVarName "HEMTT_West_TWR4";
		publicVariable "HEMTT_West_TWR4";
	} else {
		hint "Truck is already active somewhere...";
	}
//	ctrlSetText[1000, format["Resources = %1", W_TWR1_Resources]]
	},
	nil, 1, True, True, "", "(player distance W_TWR4_Factory_Ctrl) < 3"
];
*/

//addaction for Tower 1 barracks/armory control
player addAction [
	"Access Armory",
	{
//	createDialog "";
	hint "Feature needed!";
	sleep 1;
//	ctrlSetText[1000, format["Resources = %1", W_TWR1_Resources]]
	},
	nil, 1, True, True, "", "(player distance W_TWR4_Barracks_Ctrl) < 3"
];

//////////////////////////////////////////////////////////////
//////////////////////////HEMTT addActions////////////////////
//////////////////////////////////////////////////////////////


//Launch TWR1 addaction on HEMTT
player addAction [
	"Build Blufor MOB",
	{	
		//checks the bool (1/0) counter to make sure the tower doesn't already exist.
		if (W_TWR1_Counter == 0) then {
			_dir = getDir HEMTT_West;
			_dir = _dir + 90;
			_pos = position HEMTT_West;
			_yPos = _pos select 1;
			_pos set [1, _yPos - 15];
			_newPos = [_pos, 0, 75, 25, 0, 5, 0] call BIS_fnc_findSafePos;
						
			//tests if base is going to be built too close to another base
			_distanceCheck = 0;
			{
				if ((HEMTT_West distance _x) < 2500) then {
					_distanceCheck = _distanceCheck + 1;
				};
			} forEach Existing_Tower_Array;
				
			if (_distanceCheck == 0) then {
			
				//creates the original tower
				W_TWR1 = createVehicle ["Land_Cargo_Tower_V1_No1_F", _newPos, [], 0, "None"];
			
				//tests if FindSafePos failed
				if ((W_TWR1 distance Error_pos) > 200) then {
					W_TWR1 setDir _dir;
					W_TWR1_Counter = 1;
					publicVariable "W_TWR1_Counter";
					W_TWR1 setVariable ["R3F_LOG_disabled", true, true];
					W_TWR1 setVehicleVarName "W_TWR1";
					publicVariable "W_TWR1";
						
					//creates and orients resource depsoit infostand.
					W_TWR1_RescDeposit = createVehicle ["Land_InfoStand_V1_F", _newPos, [], 0, "NONE"];
					W_TWR1_RescDeposit attachTo [W_TWR1,[-5.5,-3.4,-12]];
					W_TWR1_RescDeposit setDir 90;
					W_TWR1_RescDeposit setVariable ["R3F_LOG_disabled", true, true];
					W_TWR1_RescDeposit setVehicleVarName "W_TWR1_RescDeposit";
					publicVariable "W_TWR1_RescDeposit";
						
					//creates and orients the MOB control infostand.
					W_TWR1_BaseCTRL = createVehicle ["Land_InfoStand_V1_F", _newPos, [], 0, "NONE"];
					W_TWR1_BaseCTRL attachTo [W_TWR1, [-6.25,4.5,3.2]];
					W_TWR1_BaseCTRL setDir -90;
					W_TWR1_BaseCTRL setVariable ["R3F_LOG_disabled", true, true];
					W_TWR1_BaseCTRL setVehicleVarName "W_TWR1_BaseCTRL";
					publicVariable "W_TWR1_BaseCTRL";

					W_TWR1_Deposit_Marker = createVehicle ["Land_JumpTarget_F", _newPos, [], 0, "NONE"];
					W_TWR1_Deposit_Marker attachTo [W_TWR1, [0,-12,-12.3]];
					W_TWR1_Deposit_Marker setVariable ["R3F_LOG_disabled", true, true];
					W_TWR1_Deposit_Marker setVehicleVarName "W_TWR1_Deposit_Marker";
					publicVariable "W_TWR1_Deposit_Marker";
					
					W_TWR1_SELF_DESTRUCT = createVehicle ["Land_Device_disassembled_F", _newPos, [], 0, "NONE"];
					W_TWR1_SELF_DESTRUCT attachTo [W_TWR1, [ -3.5, -1.5, 0.5]];
					W_TWR1_SELF_DESTRUCT setDir 0;
					W_TWR1_SELF_DESTRUCT setVariable ["R3F_LOG_disabled", true, true];
					W_TWR1_SELF_DESTRUCT setVehicleVarName "W_TWR1_SELF_DESTRUCT";
					publicVariable "W_TWR1_SELF_DESTRUCT";
			
					//Turns the needed objects into public variables so everyone can access them by name
			
					Existing_Tower_Array = Existing_Tower_Array + [W_TWR1];
					publicVariable "Existing_Tower_Array";
					diag_log format["Tower Array: %1", Existing_Tower_Array];
			
					//creates and orients any extra objects we need.
					_outdoorLamp = createVehicle ["Land_LampHalogen_F", _newPos, [], 0, "NONE"];
					_outdoorLamp attachTo [W_TWR1, [4.9,4.25,-8]];
					_outdoorLamp setDir -45;
					_outdoorLamp setVariable ["R3F_LOG_disabled", true, true];
						
					_indoorLamp = createVehicle ["Land_Camping_Light_F", _newPos, [], 0, "NONE"];
					_indoorLamp attachTo [W_TWR1, [0.1,0.5,0]];
					_indoorLamp setVariable ["R3F_LOG_disabled", true, true];
			
					_container = createVehicle ["Land_Cargo20_blue_F", _newPos, [], 0, "NONE"];
					_container attachTO [W_TWR1, [0,+6.5,-11.5]];
					_container setVariable ["R3F_LOG_disabled", true, true];
				
					//create marker for the map and area for depositing resource crates.
					_MOBmarker = createMarkerLocal ["W_TWR1_Marker", getPos W_TWR1_Deposit_Marker];
					_MOBmarker setMarkerShapeLocal "ICON";
					_MOBmarker setMarkerTypeLocal "b_hq";
					_MOBmarker setMarkerColorLocal "ColorWEST";
					_MOBmarker setMarkerTextLocal "Main Operating Base";
					
					//resets distance check to make sure it doesn't conflict with other local variables in this script.
					_distanceCheck = 0;
				} else {
					deleteVehicle W_TWR1;
					hint "This area is too small for the tower!";
				};
			} else {
				hint "You cannot build this close to another base!";
			};
		} else {
			hint "MOB Tower already exists!";
		};
	},
	nil, 1, True, True, "", "(player distance HEMTT_West) < 5"
];

//Launch TWR2 addaction on HEMTT
player addAction [
	"Build BluFor FOB 1",
	{	
		//checks the bool (1/0) counter to make sure the tower doesn't already exist.
		if (W_TWR2_Counter == 0) then {

			_dir = getDir HEMTT_West_TWR2;
			_dir = _dir + 90;
			_pos = position HEMTT_West_TWR2;
			_yPos = _pos select 1;
			_pos set [1, _yPos - 15];
			_newPos = [_pos, 0, 100, 50, 0, 10, 0] call BIS_fnc_findSafePos;
			
			//tests if base is going to be built too close to another base
			_distanceCheck = 0;
			{
				if ((HEMTT_West_TWR2 distance _x) < 2500) then {
					_distanceCheck = _distanceCheck + 1;
				};
			} forEach Existing_Tower_Array;
				
			if (_distanceCheck == 0) then {
			
				//creates the original tower
				W_TWR2 = createVehicle ["Land_Cargo_Tower_V1_No2_F", _newPos, [], 0, "None"];
				
				//tests if FindSafePos failed
				if ((W_TWR2 distance Error_pos) > 200) then {
					W_TWR2 setDir _dir;
					W_TWR2_Counter = 1;
					publicVariable "W_TWR2_Counter";
					W_TWR2 setVariable ["R3F_LOG_disabled", true, true];
				
					diag_log format["Tower Position is: %1", getPos W_TWR2];
					
					//creates and orients resource depsoit infostand.
					W_TWR2_RescDeposit = createVehicle ["Land_InfoStand_V1_F", _newPos, [], 0, "NONE"];
					W_TWR2_RescDeposit attachTo [W_TWR2,[-5.5,-3.4,-12]];
					W_TWR2_RescDeposit setDir 90;
					W_TWR2_RescDeposit setVariable ["R3F_LOG_disabled", true, true];
						
					//creates and orients the MOB control infostand.
					W_TWR2_BaseCTRL = createVehicle ["Land_InfoStand_V1_F", _newPos, [], 0, "NONE"];
					W_TWR2_BaseCTRL attachTo [W_TWR2, [-6.25,4.5,3.2]];
					W_TWR2_BaseCTRL setDir -90;
					W_TWR2_BaseCTRL setVariable ["R3F_LOG_disabled", true, true];

					W_TWR2_Deposit_Marker = createVehicle ["Land_JumpTarget_F", _newPos, [], 0, "NONE"];
					W_TWR2_Deposit_Marker attachTo [W_TWR2, [0,-12,-12.3]];
					W_TWR2_Deposit_Marker setVariable ["R3F_LOG_disabled", true, true];
			
					//Turns the needed objects into public variables so everyone can access them by name
					W_TWR2 setVehicleVarName "W_TWR2";
					publicVariable "W_TWR2";
					
					Existing_Tower_Array = Existing_Tower_Array + [W_TWR2];
					publicVariable "Existing_Tower_Array";
					diag_log format["Tower Array: %1", Existing_Tower_Array];
			
					W_TWR2_RescDeposit setVehicleVarName "W_TWR2_RescDeposit";
					publicVariable "W_TWR2_RescDeposit";
			
					W_TWR2_BaseCTRL setVehicleVarName "W_TWR2_BaseCTRL";
					publicVariable "W_TWR2_BaseCTRL";
			
					W_TWR2_Deposit_Marker setVehicleVarName "W_TWR2_Deposit_Marker";
					publicVariable "W_TWR2_Deposit_Marker";
			
			
					//creates and orients any extra objects we need.
					_outdoorLamp = createVehicle ["Land_LampHalogen_F", _newPos, [], 0, "NONE"];
					_outdoorLamp attachTo [W_TWR2, [4.9,4.25,-8]];
					_outdoorLamp setDir -45;
					_outdoorLamp setVariable ["R3F_LOG_disabled", true, true];
				
					_indoorLamp = createVehicle ["Land_Camping_Light_F", _newPos, [], 0, "NONE"];
					_indoorLamp attachTo [W_TWR2, [0.1,0.5,0]];
					_indoorLamp setVariable ["R3F_LOG_disabled", true, true];
			
					_container = createVehicle ["Land_Cargo20_blue_F", _newPos, [], 0, "NONE"];
					_container attachTO [W_TWR2, [0,+6.5,-11.5]];
					_container setVariable ["R3F_LOG_disabled", true, true];
			
					//create marker for the map and area for depositing resource crates.
					_MOBmarker = createMarkerLocal ["W_TWR2_Marker", getPos W_TWR2_Deposit_Marker];
					_MOBmarker setMarkerShapeLocal "ICON";
					_MOBmarker setMarkerTypeLocal "b_hq";
					_MOBmarker setMarkerColorLocal "ColorWEST";
					_MOBmarker setMarkerTextLocal "Forward Operating Base 1";
					
					//resets distance check to make sure it doesn't conflict with other local variables in this script.
					_distanceCheck = 0;
				} else {
					deleteVehicle W_TWR2;
					hint "This area is too small for the tower!";
				};
			} else {
				hint "You cannot build this close to another base!";
			};
		} else {
			hint "MOB Tower already exists!";
		};
	},
	nil, 1, True, True, "", "(player distance HEMTT_West_TWR2) < 5"
];

//Launch TWR3 addaction on HEMTT
player addAction [
	"Build BluFor FOB 2",
	{	
		//checks the bool (1/0) counter to make sure the tower doesn't already exist.
		if (W_TWR3_Counter == 0) then {

			_dir = getDir HEMTT_West_TWR3;
			_dir = _dir + 90;
			_pos = position HEMTT_West_TWR3;
			_yPos = _pos select 1;
			_pos set [1, _yPos - 15];
			_newPos = [_pos, 0, 100, 50, 0, 10, 0] call BIS_fnc_findSafePos;
			
			//tests if base is going to be built too close to another base
			_distanceCheck = 0;
			{
				if ((HEMTT_West_TWR3 distance _x) < 2500) then {
					_distanceCheck = _distanceCheck + 1;
				};
			} forEach Existing_Tower_Array;
				
			if (_distanceCheck == 0) then {
			
				//creates the original tower
				W_TWR3 = createVehicle ["Land_Cargo_Tower_V1_No3_F", _newPos, [], 0, "None"];
				
				//tests if FindSafePos failed
				if ((W_TWR3 distance Error_pos) > 200) then {
					W_TWR3 setDir _dir;
					W_TWR3_Counter = 1;
					publicVariable "W_TWR3_Counter";
					W_TWR3 setVariable ["R3F_LOG_disabled", true, true];
				
					diag_log format["Tower Position is: %1", getPos W_TWR3];
					
					//creates and orients resource depsoit infostand.
					W_TWR3_RescDeposit = createVehicle ["Land_InfoStand_V1_F", _newPos, [], 0, "NONE"];
					W_TWR3_RescDeposit attachTo [W_TWR3,[-5.5,-3.4,-12]];
					W_TWR3_RescDeposit setDir 90;
					W_TWR3_RescDeposit setVariable ["R3F_LOG_disabled", true, true];
						
					//creates and orients the MOB control infostand.
					W_TWR3_BaseCTRL = createVehicle ["Land_InfoStand_V1_F", _newPos, [], 0, "NONE"];
					W_TWR3_BaseCTRL attachTo [W_TWR3, [-6.25,4.5,3.2]];
					W_TWR3_BaseCTRL setDir -90;
					W_TWR3_BaseCTRL setVariable ["R3F_LOG_disabled", true, true];

					W_TWR3_Deposit_Marker = createVehicle ["Land_JumpTarget_F", _newPos, [], 0, "NONE"];
					W_TWR3_Deposit_Marker attachTo [W_TWR3, [0,-12,-12.3]];
					W_TWR3_Deposit_Marker setVariable ["R3F_LOG_disabled", true, true];
			
					//Turns the needed objects into public variables so everyone can access them by name
					W_TWR3 setVehicleVarName "W_TWR3";
					publicVariable "W_TWR3";
					
					Existing_Tower_Array = Existing_Tower_Array + [W_TWR3];
					publicVariable "Existing_Tower_Array";
					diag_log format["Tower Array: %1", Existing_Tower_Array];
			
					W_TWR3_RescDeposit setVehicleVarName "W_TWR3_RescDeposit";
					publicVariable "W_TWR3_RescDeposit";
			
					W_TWR3_BaseCTRL setVehicleVarName "W_TWR3_BaseCTRL";
					publicVariable "W_TWR3_BaseCTRL";
			
					W_TWR3_Deposit_Marker setVehicleVarName "W_TWR3_Deposit_Marker";
					publicVariable "W_TWR3_Deposit_Marker";
			
			
					//creates and orients any extra objects we need.
					_outdoorLamp = createVehicle ["Land_LampHalogen_F", _newPos, [], 0, "NONE"];
					_outdoorLamp attachTo [W_TWR3, [4.9,4.25,-8]];
					_outdoorLamp setDir -45;
					_outdoorLamp setVariable ["R3F_LOG_disabled", true, true];
				
					_indoorLamp = createVehicle ["Land_Camping_Light_F", _newPos, [], 0, "NONE"];
					_indoorLamp attachTo [W_TWR3, [0.1,0.5,0]];
					_indoorLamp setVariable ["R3F_LOG_disabled", true, true];
			
					_container = createVehicle ["Land_Cargo20_blue_F", _newPos, [], 0, "NONE"];
					_container attachTO [W_TWR3, [0,+6.5,-11.5]];
					_container setVariable ["R3F_LOG_disabled", true, true];
			
					//create marker for the map and area for depositing resource crates.
					_MOBmarker = createMarkerLocal ["W_TWR3_Marker", getPos W_TWR3_Deposit_Marker];
					_MOBmarker setMarkerShapeLocal "ICON";
					_MOBmarker setMarkerTypeLocal "b_hq";
					_MOBmarker setMarkerColorLocal "ColorWEST";
					_MOBmarker setMarkerTextLocal "Forward Operating Base 2";
					
					//resets distance check to make sure it doesn't conflict with other local variables in this script.
					_distanceCheck = 0;
				} else {
					deleteVehicle W_TWR3;
					hint "This area is too small for the tower!";
				};
			} else {
				hint "You cannot build this close to another base!";
			};
		} else {
			hint "MOB Tower already exists!";
		};
	},
	nil, 1, True, True, "", "(player distance HEMTT_West_TWR3) < 5"
];

//Launch TWR4 addaction on HEMTT
player addAction [
	"Build BluFor FOB 3",
	{	
		//checks the bool (1/0) counter to make sure the tower doesn't already exist.
		if (W_TWR4_Counter == 0) then {

			_dir = getDir HEMTT_West_TWR4;
			_dir = _dir + 90;
			_pos = position HEMTT_West_TWR4;
			_yPos = _pos select 1;
			_pos set [1, _yPos - 15];
			_newPos = [_pos, 0, 100, 50, 0, 10, 0] call BIS_fnc_findSafePos;
			
			//tests if base is going to be built too close to another base
			_distanceCheck = 0;
			{
				if ((HEMTT_West_TWR4 distance _x) < 2500) then {
					_distanceCheck = _distanceCheck + 1;
				};
			} forEach Existing_Tower_Array;
				
			if (_distanceCheck == 0) then {
			
				//creates the original tower
				W_TWR4 = createVehicle ["Land_Cargo_Tower_V1_No4_F", _newPos, [], 0, "None"];
				
				//tests if FindSafePos failed
				if ((W_TWR4 distance Error_pos) > 200) then {
					W_TWR4 setDir _dir;
					W_TWR4_Counter = 1;
					publicVariable "W_TWR4_Counter";
					W_TWR4 setVariable ["R3F_LOG_disabled", true, true];
				
					diag_log format["Tower Position is: %1", getPos W_TWR4];
					
					//creates and orients resource depsoit infostand.
					W_TWR4_RescDeposit = createVehicle ["Land_InfoStand_V1_F", _newPos, [], 0, "NONE"];
					W_TWR4_RescDeposit attachTo [W_TWR4,[-5.5,-3.4,-12]];
					W_TWR4_RescDeposit setDir 90;
					W_TWR4_RescDeposit setVariable ["R3F_LOG_disabled", true, true];
						
					//creates and orients the MOB control infostand.
					W_TWR4_BaseCTRL = createVehicle ["Land_InfoStand_V1_F", _newPos, [], 0, "NONE"];
					W_TWR4_BaseCTRL attachTo [W_TWR4, [-6.25,4.5,3.2]];
					W_TWR4_BaseCTRL setDir -90;
					W_TWR4_BaseCTRL setVariable ["R3F_LOG_disabled", true, true];

					W_TWR4_Deposit_Marker = createVehicle ["Land_JumpTarget_F", _newPos, [], 0, "NONE"];
					W_TWR4_Deposit_Marker attachTo [W_TWR4, [0,-12,-12.3]];
					W_TWR4_Deposit_Marker setVariable ["R3F_LOG_disabled", true, true];
			
					//Turns the needed objects into public variables so everyone can access them by name
					W_TWR4 setVehicleVarName "W_TWR4";
					publicVariable "W_TWR4";
					
					Existing_Tower_Array = Existing_Tower_Array + [W_TWR4];
					publicVariable "Existing_Tower_Array";
					diag_log format["Tower Array: %1", Existing_Tower_Array];
			
					W_TWR4_RescDeposit setVehicleVarName "W_TWR4_RescDeposit";
					publicVariable "W_TWR4_RescDeposit";
			
					W_TWR2_BaseCTRL setVehicleVarName "W_TWR4_BaseCTRL";
					publicVariable "W_TWR4_BaseCTRL";
			
					W_TWR2_Deposit_Marker setVehicleVarName "W_TWR4_Deposit_Marker";
					publicVariable "W_TWR4_Deposit_Marker";
			
			
					//creates and orients any extra objects we need.
					_outdoorLamp = createVehicle ["Land_LampHalogen_F", _newPos, [], 0, "NONE"];
					_outdoorLamp attachTo [W_TWR4, [4.9,4.25,-8]];
					_outdoorLamp setDir -45;
					_outdoorLamp setVariable ["R3F_LOG_disabled", true, true];
				
					_indoorLamp = createVehicle ["Land_Camping_Light_F", _newPos, [], 0, "NONE"];
					_indoorLamp attachTo [W_TWR4, [0.1,0.5,0]];
					_indoorLamp setVariable ["R3F_LOG_disabled", true, true];
			
					_container = createVehicle ["Land_Cargo20_blue_F", _newPos, [], 0, "NONE"];
					_container attachTO [W_TWR4, [0,+6.5,-11.5]];
					_container setVariable ["R3F_LOG_disabled", true, true];
			
					//create marker for the map and area for depositing resource crates.
					_MOBmarker = createMarkerLocal ["W_TWR4_Marker", getPos W_TWR4_Deposit_Marker];
					_MOBmarker setMarkerShapeLocal "ICON";
					_MOBmarker setMarkerTypeLocal "b_hq";
					_MOBmarker setMarkerColorLocal "ColorWEST";
					_MOBmarker setMarkerTextLocal "Forward Operating Base 3";
					
					//resets distance check to make sure it doesn't conflict with other local variables in this script.
					_distanceCheck = 0;
				} else {
					deleteVehicle W_TWR4;
					hint "This area is too small for the tower!";
				};
			} else {
				hint "You cannot build this close to another base!";
			};
		} else {
			hint "MOB Tower already exists!";
		};
	},
	nil, 1, True, True, "", "(player distance HEMTT_West_TWR4) < 5"
];