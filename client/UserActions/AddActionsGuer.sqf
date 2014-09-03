//NOTE: Check counter if statements before launching live version.

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
////////////////Tower 2 (MOB 1) addActions////////////////////
//////////////////////////////////////////////////////////////

//addaction for Tower 1 resource deposit
player addAction [
	"Resource Controls",
	{
	createDialog "AF_G_TWR1_RescDeposit";
	sleep 1;
	ctrlSetText[1000, format["Resources = %1", G_TWR1_Resources]]
	},
	nil, 1, True, True, "", "(player distance G_TWR1_RescDeposit) < 3"
];

//addaction for Tower 1 Base Control
player addAction [
	"Access Base Controls",
	{
	createDialog "AF_G_TWR1_CTRL";
	sleep 1;
//	ctrlSetText[1000, format["Resources = %1", W_TWR1_Resources]]
	},
	nil, 1, True, True, "", "(player distance G_TWR1_BaseCTRL) < 3"
];

//addaction for Tower 1 vehicle factory control (currently in a test method)
player addAction [
	"Access Vehicle Factory",
	{
//	createDialog "";
	if (isNil "HEMTT_Guer_TWR2") then {
		_pos = getMarkerPos "G_TWR1_Marker";
		HEMTT_Guer_TWR2 = createVehicle ["B_Truck_01_box_F", _pos, [], 0, "None"];
		HEMTT_Guer_TWR2 setVehicleVarName "HEMTT_Guer_TWR2";
		publicVariable "HEMTT_Guer_TWR2";
	} else {
		hint "Truck is already active somewhere...";
	}
//	ctrlSetText[1000, format["Resources = %1", G_TWR1_Resources]]
	},
	nil, 1, True, True, "", "(player distance G_TWR1_Factory_Ctrl) < 3"
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
	nil, 1, True, True, "", "(player distance G_TWR1_Barracks_Ctrl) < 3"
];

//////////////////////////////////////////////////////////////
////////////////Tower 2 (FOB 1) addActions////////////////////
//////////////////////////////////////////////////////////////

//addaction for Tower 2 resource deposit
player addAction [
	"Resource Controls",
	{
	createDialog "AF_G_TWR2_RescDeposit";
	sleep 1;
	ctrlSetText[1000, format["Resources = %1", G_TWR2_Resources]]
	},
	nil, 1, True, True, "", "(player distance G_TWR2_RescDeposit) < 3"
];

//addaction for Tower 1 Base Control
player addAction [
	"Access Base Controls",
	{
	createDialog "AF_G_TWR2_CTRL";
	sleep 1;
//	ctrlSetText[1000, format["Resources = %1", G_TWR1_Resources]]
	},
	nil, 1, True, True, "", "(player distance G_TWR2_BaseCTRL) < 3"
];

//addaction for Tower 1 vehicle factory control (currently in a test method)
player addAction [
	"Access Vehicle Factory",
	{
//	createDialog "";
	if (isNil "HEMTT_Guer_TWR3") then {
		_pos = getMarkerPos "G_TWR2_Marker";
		HEMTT_Guer_TWR2 = createVehicle ["B_Truck_01_box_F", _pos, [], 0, "None"];
		HEMTT_Guer_TWR2 setVehicleVarName "HEMTT_Guer_TWR3";
		publicVariable "HEMTT_Guer_TWR3";
	} else {
		hint "Truck is already active somewhere...";
	}
//	ctrlSetText[1000, format["Resources = %1", W_TWR1_Resources]]
	},
	nil, 1, True, True, "", "(player distance G_TWR2_Factory_Ctrl) < 3"
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
	nil, 1, True, True, "", "(player distance G_TWR2_Barracks_Ctrl) < 3"
];

//////////////////////////////////////////////////////////////
////////////////Tower 3 (FOB 2) addActions////////////////////
//////////////////////////////////////////////////////////////

//addaction for Tower 2 resource deposit
player addAction [
	"Resource Controls",
	{
	createDialog "AF_G_TWR3_RescDeposit";
	sleep 1;
	ctrlSetText[1000, format["Resources = %1", G_TWR3_Resources]]
	},
	nil, 1, True, True, "", "(player distance G_TWR3_RescDeposit) < 3"
];

//addaction for Tower 1 Base Control
player addAction [
	"Access Base Controls",
	{
	createDialog "AF_G_TWR3_CTRL";
	sleep 1;
//	ctrlSetText[1000, format["Resources = %1", W_TWR1_Resources]]
	},
	nil, 1, True, True, "", "(player distance G_TWR3_BaseCTRL) < 3"
];

//addaction for Tower 1 vehicle factory control (currently in a test method)
player addAction [
	"Access Vehicle Factory",
	{
//	createDialog "";
	if (isNil "HEMTT_Guer_TWR4") then {
		_pos = getMarkerPos "G_TWR3_Marker";
		HEMTT_Guer_TWR2 = createVehicle ["B_Truck_01_box_F", _pos, [], 0, "None"];
		HEMTT_Guer_TWR2 setVehicleVarName "HEMTT_Guer_TWR4";
		publicVariable "HEMTT_Guer_TWR4";
	} else {
		hint "Truck is already active somewhere...";
	}
//	ctrlSetText[1000, format["Resources = %1", W_TWR1_Resources]]
	},
	nil, 1, True, True, "", "(player distance G_TWR3_Factory_Ctrl) < 3"
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
	nil, 1, True, True, "", "(player distance G_TWR3_Barracks_Ctrl) < 3"
];

//////////////////////////////////////////////////////////////
////////////////Tower 4 (FOB 3) addActions////////////////////
//////////////////////////////////////////////////////////////

//addaction for Tower 2 resource deposit
player addAction [
	"Resource Controls",
	{
	createDialog "AF_G_TWR4_RescDeposit";
	sleep 1;
	ctrlSetText[1000, format["Resources = %1", G_TWR4_Resources]]
	},
	nil, 1, True, True, "", "(player distance G_TWR4_RescDeposit) < 3"
];

//addaction for Tower 1 Base Control
player addAction [
	"Access Base Controls",
	{
	createDialog "AF_G_TWR4_CTRL";
	sleep 1;
//	ctrlSetText[1000, format["Resources = %1", W_TWR1_Resources]]
	},
	nil, 1, True, True, "", "(player distance G_TWR4_BaseCTRL) < 3"
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
	nil, 1, True, True, "", "(player distance G_TWR4_Barracks_Ctrl) < 3"
];

//////////////////////////////////////////////////////////////
//////////////////////////HEMTT addActions////////////////////
//////////////////////////////////////////////////////////////


//Launch TWR1 addaction on HEMTT
player addAction [
	"Build Indie MOB",
	{	
		//checks the bool (1/0) counter to make sure the tower doesn't already exist.
		if (G_TWR1_Counter == 0) then {
			_dir = getDir HEMTT_Guer;
			_dir = _dir + 90;
			_pos = position HEMTT_Guer;
			_yPos = _pos select 1;
			_pos set [1, _yPos - 15];
			_newPos = [_pos, 0, 100, 50, 0, 10, 0] call BIS_fnc_findSafePos;
						
			//tests if base is going to be built too close to another base
			_distanceCheck = 0;
			{
				if ((HEMTT_Guer distance _x) < 2500) then {
					_distanceCheck = _distanceCheck + 1;
				};
			} forEach Existing_Tower_Array;
				
			if (_distanceCheck == 0) then {
			
				//creates the original tower
				G_TWR1 = createVehicle ["Land_Cargo_Tower_V1_No1_F", _newPos, [], 0, "None"];
			
				//tests if FindSafePos failed
				if ((G_TWR1 distance Error_pos) > 200) then {
					G_TWR1 setDir _dir;
					G_TWR1_Counter = 1;
					publicVariable "G_TWR1_Counter";
					G_TWR1 setVariable ["R3F_LOG_disabled", true, true];
						
					//creates and orients resource depsoit infostand.
					G_TWR1_RescDeposit = createVehicle ["Land_InfoStand_V1_F", _newPos, [], 0, "NONE"];
					G_TWR1_RescDeposit attachTo [G_TWR1,[-5.5,-3.4,-12]];
					G_TWR1_RescDeposit setDir 90;
					G_TWR1_RescDeposit setVariable ["R3F_LOG_disabled", true, true];
						
					//creates and orients the MOB control infostand.
					G_TWR1_BaseCTRL = createVehicle ["Land_InfoStand_V1_F", _newPos, [], 0, "NONE"];
					G_TWR1_BaseCTRL attachTo [G_TWR1, [-6.25,4.5,3.2]];
					G_TWR1_BaseCTRL setDir -90;
					G_TWR1_BaseCTRL setVariable ["R3F_LOG_disabled", true, true];

					W_TWR1_Deposit_Marker = createVehicle ["Land_JumpTarget_F", _newPos, [], 0, "NONE"];
					G_TWR1_Deposit_Marker attachTo [G_TWR1, [0,-12,-12.3]];
					G_TWR1_Deposit_Marker setVariable ["R3F_LOG_disabled", true, true];
			
					//Turns the needed objects into public variables so everyone can access them by name
					G_TWR1 setVehicleVarName "G_TWR1";
					publicVariable "G_TWR1";
			
					Existing_Tower_Array = Existing_Tower_Array + [G_TWR1];
					publicVariable "Existing_Tower_Array";
					diag_log format["Tower Array: %1", Existing_Tower_Array];
			
					W_TWR1_RescDeposit setVehicleVarName "G_TWR1_RescDeposit";
					publicVariable "G_TWR1_RescDeposit";
			
					W_TWR1_BaseCTRL setVehicleVarName "G_TWR1_BaseCTRL";
					publicVariable "G_TWR1_BaseCTRL";
			
					G_TWR1_Deposit_Marker setVehicleVarName "G_TWR1_Deposit_Marker";
					publicVariable "G_TWR1_Deposit_Marker";
			
					//creates and orients any extra objects we need.
					_outdoorLamp = createVehicle ["Land_LampHalogen_F", _newPos, [], 0, "NONE"];
					_outdoorLamp attachTo [G_TWR1, [4.9,4.25,-8]];
					_outdoorLamp setDir -45;
					_outdoorLamp setVariable ["R3F_LOG_disabled", true, true];
						
					_indoorLamp = createVehicle ["Land_Camping_Light_F", _newPos, [], 0, "NONE"];
					_indoorLamp attachTo [G_TWR1, [0.1,0.5,0]];
					_indoorLamp setVariable ["R3F_LOG_disabled", true, true];
			
					_container = createVehicle ["Land_Cargo20_light_green_F", _newPos, [], 0, "NONE"];
					_container attachTO [G_TWR1, [0,+6.5,-11.5]];
					_container setVariable ["R3F_LOG_disabled", true, true];
				
					//create marker for the map and area for depositing resource crates.
					_MOBmarker = createMarkerLocal ["G_TWR1_Marker", getPos G_TWR1_Deposit_Marker];
					_MOBmarker setMarkerShapeLocal "ICON";
					_MOBmarker setMarkerTypeLocal "n_hq";
					_MOBmarker setMarkerColorLocal "ColorGuer";
					_MOBmarker setMarkerTextLocal "Main Operating Base";
					
					//resets distance check to make sure it doesn't conflict with other local variables in this script.
					_distanceCheck = 0;
				} else {
					deleteVehicle G_TWR1;
					hint "This area is too small for the tower!";
				};
			} else {
				hint "You cannot build this close to another base!";
			};
		} else {
			hint "MOB Tower already exists!";
		};
	},
	nil, 1, True, True, "", "(player distance HEMTT_Guer) < 5"
];

//Launch TWR2 addaction on HEMTT
player addAction [
	"Build Indie FOB 1",
	{	
		//checks the bool (1/0) counter to make sure the tower doesn't already exist.
		if (G_TWR2_Counter == 0) then {

			_dir = getDir HEMTT_Guer_TWR2;
			_dir = _dir + 90;
			_pos = position HEMTT_Guer_TWR2;
			_yPos = _pos select 1;
			_pos set [1, _yPos - 15];
			_newPos = [_pos, 0, 100, 50, 0, 10, 0] call BIS_fnc_findSafePos;
			
			//tests if base is going to be built too close to another base
			_distanceCheck = 0;
			{
				if ((HEMTT_Guer_TWR2 distance _x) < 2500) then {
					_distanceCheck = _distanceCheck + 1;
				};
			} forEach Existing_Tower_Array;
				
			if (_distanceCheck == 0) then {
			
				//creates the original tower
				G_TWR2 = createVehicle ["Land_Cargo_Tower_V1_No2_F", _newPos, [], 0, "None"];
				
				//tests if FindSafePos failed
				if ((G_TWR2 distance Error_pos) > 200) then {
					G_TWR2 setDir _dir;
					G_TWR2_Counter = 1;
					publicVariable "G_TWR2_Counter";
					G_TWR2 setVariable ["R3F_LOG_disabled", true, true];
				
					diag_log format["Tower Position is: %1", getPos G_TWR2];
					
					//creates and orients resource depsoit infostand.
					G_TWR2_RescDeposit = createVehicle ["Land_InfoStand_V1_F", _newPos, [], 0, "NONE"];
					G_TWR2_RescDeposit attachTo [G_TWR2,[-5.5,-3.4,-12]];
					G_TWR2_RescDeposit setDir 90;
					G_TWR2_RescDeposit setVariable ["R3F_LOG_disabled", true, true];
						
					//creates and orients the MOB control infostand.
					G_TWR2_BaseCTRL = createVehicle ["Land_InfoStand_V1_F", _newPos, [], 0, "NONE"];
					G_TWR2_BaseCTRL attachTo [G_TWR2, [-6.25,4.5,3.2]];
					G_TWR2_BaseCTRL setDir -90;
					G_TWR2_BaseCTRL setVariable ["R3F_LOG_disabled", true, true];

					G_TWR2_Deposit_Marker = createVehicle ["Land_JumpTarget_F", _newPos, [], 0, "NONE"];
					G_TWR2_Deposit_Marker attachTo [G_TWR2, [0,-12,-12.3]];
					G_TWR2_Deposit_Marker setVariable ["R3F_LOG_disabled", true, true];
			
					//Turns the needed objects into public variables so everyone can access them by name
					W_TWR2 setVehicleVarName "G_TWR2";
					publicVariable "G_TWR2";
					
					Existing_Tower_Array = Existing_Tower_Array + [G_TWR2];
					publicVariable "Existing_Tower_Array";
					diag_log format["Tower Array: %1", Existing_Tower_Array];
			
					G_TWR2_RescDeposit setVehicleVarName "G_TWR2_RescDeposit";
					publicVariable "G_TWR2_RescDeposit";
			
					G_TWR2_BaseCTRL setVehicleVarName "G_TWR2_BaseCTRL";
					publicVariable "G_TWR2_BaseCTRL";
			
					G_TWR2_Deposit_Marker setVehicleVarName "G_TWR2_Deposit_Marker";
					publicVariable "G_TWR2_Deposit_Marker";
			
			
					//creates and orients any extra objects we need.
					_outdoorLamp = createVehicle ["Land_LampHalogen_F", _newPos, [], 0, "NONE"];
					_outdoorLamp attachTo [G_TWR2, [4.9,4.25,-8]];
					_outdoorLamp setDir -45;
					_outdoorLamp setVariable ["R3F_LOG_disabled", true, true];
				
					_indoorLamp = createVehicle ["Land_Camping_Light_F", _newPos, [], 0, "NONE"];
					_indoorLamp attachTo [G_TWR2, [0.1,0.5,0]];
					_indoorLamp setVariable ["R3F_LOG_disabled", true, true];
			
					_container = createVehicle ["Land_Cargo20_light_green_F", _newPos, [], 0, "NONE"];
					_container attachTO [G_TWR2, [0,+6.5,-11.5]];
					_container setVariable ["R3F_LOG_disabled", true, true];
			
					//create marker for the map and area for depositing resource crates.
					_MOBmarker = createMarkerLocal ["G_TWR2_Marker", getPos G_TWR2_Deposit_Marker];
					_MOBmarker setMarkerShapeLocal "ICON";
					_MOBmarker setMarkerTypeLocal "n_hq";
					_MOBmarker setMarkerColorLocal "ColorGuer";
					_MOBmarker setMarkerTextLocal "Forward Operating Base 1";
					
					//resets distance check to make sure it doesn't conflict with other local variables in this script.
					_distanceCheck = 0;
				} else {
					deleteVehicle G_TWR2;
					hint "This area is too small for the tower!";
				};
			} else {
				hint "You cannot build this close to another base!";
			};
		} else {
			hint "MOB Tower already exists!";
		};
	},
	nil, 1, True, True, "", "(player distance HEMTT_Guer_TWR2) < 5"
];

//Launch TWR3 addaction on HEMTT
player addAction [
	"Build Indie FOB 2",
	{	
		//checks the bool (1/0) counter to make sure the tower doesn't already exist.
		if (G_TWR3_Counter == 0) then {

			_dir = getDir HEMTT_Guer_TWR3;
			_dir = _dir + 90;
			_pos = position HEMTT_Guer_TWR3;
			_yPos = _pos select 1;
			_pos set [1, _yPos - 15];
			_newPos = [_pos, 0, 100, 50, 0, 10, 0] call BIS_fnc_findSafePos;
			
			//tests if base is going to be built too close to another base
			_distanceCheck = 0;
			{
				if ((HEMTT_Guer_TWR3 distance _x) < 2500) then {
					_distanceCheck = _distanceCheck + 1;
				};
			} forEach Existing_Tower_Array;
				
			if (_distanceCheck == 0) then {
			
				//creates the original tower
				G_TWR3 = createVehicle ["Land_Cargo_Tower_V1_No3_F", _newPos, [], 0, "None"];
				
				//tests if FindSafePos failed
				if ((G_TWR3 distance Error_pos) > 200) then {
					G_TWR3 setDir _dir;
					G_TWR3_Counter = 1;
					publicVariable "G_TWR3_Counter";
					G_TWR3 setVariable ["R3F_LOG_disabled", true, true];
				
					diag_log format["Tower Position is: %1", getPos G_TWR3];
					
					//creates and orients resource depsoit infostand.
					G_TWR3_RescDeposit = createVehicle ["Land_InfoStand_V1_F", _newPos, [], 0, "NONE"];
					G_TWR3_RescDeposit attachTo [G_TWR3,[-5.5,-3.4,-12]];
					G_TWR3_RescDeposit setDir 90;
					G_TWR3_RescDeposit setVariable ["R3F_LOG_disabled", true, true];
						
					//creates and orients the MOB control infostand.
					G_TWR3_BaseCTRL = createVehicle ["Land_InfoStand_V1_F", _newPos, [], 0, "NONE"];
					G_TWR3_BaseCTRL attachTo [G_TWR3, [-6.25,4.5,3.2]];
					G_TWR3_BaseCTRL setDir -90;
					G_TWR3_BaseCTRL setVariable ["R3F_LOG_disabled", true, true];

					G_TWR3_Deposit_Marker = createVehicle ["Land_JumpTarget_F", _newPos, [], 0, "NONE"];
					G_TWR3_Deposit_Marker attachTo [G_TWR3, [0,-12,-12.3]];
					G_TWR3_Deposit_Marker setVariable ["R3F_LOG_disabled", true, true];
			
					//Turns the needed objects into public variables so everyone can access them by name
					G_TWR3 setVehicleVarName "G_TWR3";
					publicVariable "G_TWR3";
					
					Existing_Tower_Array = Existing_Tower_Array + [G_TWR3];
					publicVariable "Existing_Tower_Array";
					diag_log format["Tower Array: %1", Existing_Tower_Array];
			
					G_TWR3_RescDeposit setVehicleVarName "G_TWR3_RescDeposit";
					publicVariable "G_TWR3_RescDeposit";
			
					G_TWR3_BaseCTRL setVehicleVarName "G_TWR3_BaseCTRL";
					publicVariable "G_TWR3_BaseCTRL";
			
					G_TWR3_Deposit_Marker setVehicleVarName "G_TWR3_Deposit_Marker";
					publicVariable "G_TWR3_Deposit_Marker";
			
			
					//creates and orients any extra objects we need.
					_outdoorLamp = createVehicle ["Land_LampHalogen_F", _newPos, [], 0, "NONE"];
					_outdoorLamp attachTo [G_TWR3, [4.9,4.25,-8]];
					_outdoorLamp setDir -45;
					_outdoorLamp setVariable ["R3F_LOG_disabled", true, true];
				
					_indoorLamp = createVehicle ["Land_Camping_Light_F", _newPos, [], 0, "NONE"];
					_indoorLamp attachTo [G_TWR3, [0.1,0.5,0]];
					_indoorLamp setVariable ["R3F_LOG_disabled", true, true];
			
					_container = createVehicle ["Land_Cargo20_light_green_F", _newPos, [], 0, "NONE"];
					_container attachTO [G_TWR3, [0,+6.5,-11.5]];
					_container setVariable ["R3F_LOG_disabled", true, true];
			
					//create marker for the map and area for depositing resource crates.
					_MOBmarker = createMarkerLocal ["G_TWR3_Marker", getPos G_TWR3_Deposit_Marker];
					_MOBmarker setMarkerShapeLocal "ICON";
					_MOBmarker setMarkerTypeLocal "n_hq";
					_MOBmarker setMarkerColorLocal "ColorGuer";
					_MOBmarker setMarkerTextLocal "Forward Operating Base 2";
					
					//resets distance check to make sure it doesn't conflict with other local variables in this script.
					_distanceCheck = 0;
				} else {
					deleteVehicle G_TWR3;
					hint "This area is too small for the tower!";
				};
			} else {
				hint "You cannot build this close to another base!";
			};
		} else {
			hint "MOB Tower already exists!";
		};
	},
	nil, 1, True, True, "", "(player distance HEMTT_Guer_TWR3) < 5"
];

//Launch TWR4 addaction on HEMTT
player addAction [
	"Build Indie FOB 3",
	{	
		//checks the bool (1/0) counter to make sure the tower doesn't already exist.
		if (G_TWR4_Counter == 0) then {

			_dir = getDir HEMTT_Guer_TWR4;
			_dir = _dir + 90;
			_pos = position HEMTT_Guer_TWR4;
			_yPos = _pos select 1;
			_pos set [1, _yPos - 15];
			_newPos = [_pos, 0, 100, 50, 0, 10, 0] call BIS_fnc_findSafePos;
			
			//tests if base is going to be built too close to another base
			_distanceCheck = 0;
			{
				if ((HEMTT_Guer_TWR4 distance _x) < 2500) then {
					_distanceCheck = _distanceCheck + 1;
				};
			} forEach Existing_Tower_Array;
				
			if (_distanceCheck == 0) then {
			
				//creates the original tower
				G_TWR4 = createVehicle ["Land_Cargo_Tower_V1_No4_F", _newPos, [], 0, "None"];
				
				//tests if FindSafePos failed
				if ((G_TWR4 distance Error_pos) > 200) then {
					G_TWR4 setDir _dir;
					G_TWR4_Counter = 1;
					publicVariable "G_TWR4_Counter";
					G_TWR4 setVariable ["R3F_LOG_disabled", true, true];
				
					diag_log format["Tower Position is: %1", getPos G_TWR4];
					
					//creates and orients resource depsoit infostand.
					G_TWR4_RescDeposit = createVehicle ["Land_InfoStand_V1_F", _newPos, [], 0, "NONE"];
					G_TWR4_RescDeposit attachTo [G_TWR4,[-5.5,-3.4,-12]];
					G_TWR4_RescDeposit setDir 90;
					G_TWR4_RescDeposit setVariable ["R3F_LOG_disabled", true, true];
						
					//creates and orients the MOB control infostand.
					G_TWR4_BaseCTRL = createVehicle ["Land_InfoStand_V1_F", _newPos, [], 0, "NONE"];
					G_TWR4_BaseCTRL attachTo [G_TWR4, [-6.25,4.5,3.2]];
					G_TWR4_BaseCTRL setDir -90;
					G_TWR4_BaseCTRL setVariable ["R3F_LOG_disabled", true, true];

					G_TWR4_Deposit_Marker = createVehicle ["Land_JumpTarget_F", _newPos, [], 0, "NONE"];
					G_TWR4_Deposit_Marker attachTo [G_TWR4, [0,-12,-12.3]];
					G_TWR4_Deposit_Marker setVariable ["R3F_LOG_disabled", true, true];
			
					//Turns the needed objects into public variables so everyone can access them by name
					G_TWR4 setVehicleVarName "G_TWR4";
					publicVariable "G_TWR4";
					
					Existing_Tower_Array = Existing_Tower_Array + [G_TWR4];
					publicVariable "Existing_Tower_Array";
					diag_log format["Tower Array: %1", Existing_Tower_Array];
			
					G_TWR4_RescDeposit setVehicleVarName "G_TWR4_RescDeposit";
					publicVariable "G_TWR4_RescDeposit";
			
					G_TWR2_BaseCTRL setVehicleVarName "G_TWR4_BaseCTRL";
					publicVariable "G_TWR4_BaseCTRL";
			
					G_TWR2_Deposit_Marker setVehicleVarName "G_TWR4_Deposit_Marker";
					publicVariable "G_TWR4_Deposit_Marker";
			
			
					//creates and orients any extra objects we need.
					_outdoorLamp = createVehicle ["Land_LampHalogen_F", _newPos, [], 0, "NONE"];
					_outdoorLamp attachTo [G_TWR4, [4.9,4.25,-8]];
					_outdoorLamp setDir -45;
					_outdoorLamp setVariable ["R3F_LOG_disabled", true, true];
				
					_indoorLamp = createVehicle ["Land_Camping_Light_F", _newPos, [], 0, "NONE"];
					_indoorLamp attachTo [G_TWR4, [0.1,0.5,0]];
					_indoorLamp setVariable ["R3F_LOG_disabled", true, true];
			
					_container = createVehicle ["Land_Cargo20_light_green_F", _newPos, [], 0, "NONE"];
					_container attachTO [G_TWR4, [0,+6.5,-11.5]];
					_container setVariable ["R3F_LOG_disabled", true, true];
			
					//create marker for the map and area for depositing resource crates.
					_MOBmarker = createMarkerLocal ["G_TWR4_Marker", getPos G_TWR4_Deposit_Marker];
					_MOBmarker setMarkerShapeLocal "ICON";
					_MOBmarker setMarkerTypeLocal "n_hq";
					_MOBmarker setMarkerColorLocal "ColorGuer";
					_MOBmarker setMarkerTextLocal "Forward Operating Base 3";
					
					//resets distance check to make sure it doesn't conflict with other local variables in this script.
					_distanceCheck = 0;
				} else {
					deleteVehicle G_TWR4;
					hint "This area is too small for the tower!";
				};
			} else {
				hint "You cannot build this close to another base!";
			};
		} else {
			hint "MOB Tower already exists!";
		};
	},
	nil, 1, True, True, "", "(player distance HEMTT_Guer_TWR4) < 5"
];