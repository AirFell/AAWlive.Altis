/*

What is important? What needs to be passed?

Player side (If west attach a W to the variable name)
Tower number (not sure how to pass- counter possibly?)
the object to build off off
the position of the object

*/


//Launch TWR1 addaction on HEMTT
player addAction [
	"Build MOB",
	{	
		//checks the bool (1/0) counter to make sure the tower doesn't already exist.
		if (W_TWR1_Counter == 0) then {
			_dir = getDir HEMTT_West;
			_dir = _dir + 90;
			_pos = position HEMTT_West;
			_yPos = _pos select 1;
			_pos set [1, _yPos - 15];
			_newPos = [_pos, 0, 100, 50, 0, 10, 0] call BIS_fnc_findSafePos;
						
			//tests if base is going to be built too close to another base
			_distanceCheck = 0;
			{
				if ((HEMTT_West distance _x) < 2500) then {
					_distanceCheck = _distanceCheck + 1;
				};
			} forEach Existing_Tower_Arrary;
				
			if (_distanceCheck == 0) then {
			
				//creates the original tower
				W_TWR1 = createVehicle ["Land_Cargo_Tower_V1_No1_F", _newPos, [], 0, "None"];
			
				//tests if FindSafePos failed
				if ((W_TWR1 distance Error_pos) > 200) then {
					W_TWR1 setDir _dir;
					W_TWR1_Counter = 1;
					publicVariable "W_TWR1_Counter";
					W_TWR1 setVariable ["R3F_LOG_disabled", true, true];
						
					//creates and orients resource depsoit infostand.
					W_TWR1_RescDeposit = createVehicle ["Land_InfoStand_V1_F", _newPos, [], 0, "NONE"];
					W_TWR1_RescDeposit attachTo [W_TWR1,[-5.5,-3.4,-12]];
					W_TWR1_RescDeposit setDir 90;
					W_TWR1_RescDeposit setVariable ["R3F_LOG_disabled", true, true];
						
					//creates and orients the MOB control infostand.
					W_TWR1_BaseCTRL = createVehicle ["Land_InfoStand_V1_F", _newPos, [], 0, "NONE"];
					W_TWR1_BaseCTRL attachTo [W_TWR1, [-6.25,4.5,3.2]];
					W_TWR1_BaseCTRL setDir -90;
					W_TWR1_BaseCTRL setVariable ["R3F_LOG_disabled", true, true];

					W_TWR1_Deposit_Marker = createVehicle ["Land_JumpTarget_F", _newPos, [], 0, "NONE"];
					W_TWR1_Deposit_Marker attachTo [W_TWR1, [0,-12,-12.3]];
					W_TWR1_Deposit_Marker setVariable ["R3F_LOG_disabled", true, true];
			
					//Turns the needed objects into public variables so everyone can access them by name
					W_TWR1 setVehicleVarName "W_TWR1";
					publicVariable "W_TWR1";
			
					Existing_Tower_Array = Existing_Tower_Array + [W_TWR1];
					publicVariable "Existing_Tower_Array";
					diag_log format["Tower Array: %1", Existing_Tower_Array];
			
					W_TWR1_RescDeposit setVehicleVarName "W_TWR1_RescDeposit";
					publicVariable "W_TWR1_RescDeposit";
			
					W_TWR1_BaseCTRL setVehicleVarName "W_TWR1_BaseCTRL";
					publicVariable "W_TWR1_BaseCTRL";
			
					W_TWR1_Deposit_Marker setVehicleVarName "W_TWR1_Deposit_Marker";
					publicVariable "W_TWR1_Deposit_Marker";
			
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