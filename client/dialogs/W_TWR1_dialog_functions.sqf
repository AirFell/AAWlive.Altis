/*
NOTE: Need to add markers for where vehicles/player will spawn, deposit things in a depot, and vehicles repair

Variables are passed from the dialog exec VM in the button
Passed variables: 
Switch selects:
_this select 0 = the dialog name EXAMPLE: "ResourceDeposit", "BaseCTRL", "BarracksCTRL"
_this select 1 = the dialog button: "deposit" ect...
*/
switch (_this select 0) do{
	case "BaseCTRL":{
		switch (_this select 1) do{
			case "BaBuild":{
				
				if (W_TWR1_Barracks_Counter == 0) then {
					if (W_TWR1_Resources > 499) then {
						
						_dir = getDir W_TWR1;
						_pos = W_TWR1_Deposit_Marker modelToWorld [0,-50,0];
						_newPos = [_pos, 0, 60, 20, 0, 5, 0] call BIS_fnc_findSafePos;
						
						//creates the original tower
						_gazeebo = createVehicle ["Land_GH_Gazebo_F", _newPos, [], 0, "None"];
						_gazeebo setDir _dir + 180;
						_gazeebo setPos _newPos;
						_gazeebo setVectorUp [0,0,1];
						_gazeebo setVariable ["R3F_LOG_disabled", true, true];
						_gazeebo setVehicleVarName "W_TWR1_Barracks";
						publicVariable "W_TWR1_Barracks";
						
						//creates and orients barracks/armory control infostand.
						W_TWR1_Barracks_Ctrl = createVehicle ["Land_InfoStand_V2_F", _newPos, [], 0, "NONE"];
						W_TWR1_Barracks_Ctrl attachTo [_gazeebo,[-6.5, -1, -1.25]];
						W_TWR1_Barracks_Ctrl setDir -90;
						W_TWR1_Barracks_Ctrl setVariable ["R3F_LOG_disabled", true, true];
						W_TWR1_Barracks_Ctrl setVehicleVarName "W_TWR1_Barracks_Ctrl";
						publicVariable "W_TWR1_Barracks_Ctrl";
						
						_weaponbox = createVehicle ["Land_Pallet_MilBoxes_F", _newPos, [], 0, "NONE"];
						_weaponbox attachTo [_gazeebo,[-6, 2, -1.4]];
						_weaponbox setVariable ["R3F_LOG_disabled", true, true];
						_weaponbox setVehicleVarName "W_TWR1_Weapon_Box";
						publicVariable "W_TWR1_Weapon_Box";
						
						_Light = createVehicle ["Land_LampShabby_F", _newPos, [], 0, "NONE"];
						_Light attachTo [_gazeebo,[-0.3, .65, -1.5]];
						_Light setDir -90;
						_Light setVariable ["R3F_LOG_disabled", true, true];
			
						//Set Counter so it doesn't build more than once.
						W_TWR1_Barracks_Counter = 1;
						publicVariable "W_TWR1_Barracks_Counter";

						//create marker for player spawn point
						respawn_west1 = createMarker ["respawn_west1", [(getPos _gazeebo select 0) + 2.5, (getPos _gazeebo select 1) + 2.5, 0]];
					
						//create marker for where ammo crates spawn at
						
						//create marker for where ammo crates deposit from?
					
						//Removes barracks cost from resources
						W_TWR1_Resources = W_TWR1_Resources - 500;
						publicVariable "W_TWR1_Resources";
						ctrlSetText[1000, format["Resources = %1", W_TWR1_Resources]];
						
					}else{
						hint "Not enough resources!";
					};
				} else {
					hint "MOB Barracks already exist!";
				};
				
			};
			case "BaUpgrade":{
				hint "Feature coming soon!";
			};
			case "FactBuild":{

				if (W_TWR1_Factory_Counter == 0) then {
					if (W_TWR1_Resources > 749) then {
					
						_dir = getDir W_TWR1;
						_pos = W_TWR1_Deposit_Marker modelToWorld [0,50,0];
						_newPos = [_pos, 0, 60, 20, 0, 10, 0] call BIS_fnc_findSafePos;
						
						//creates the factory shed
						_shed = createVehicle ["Land_Shed_Big_F", _pos, [], 0, "None"];
						_shed setDir _dir + 180;
						_shed setPos _newPos;
						_shed setVectorUp [0,0,1];
						_shed setVariable ["R3F_LOG_disabled", true, true];
						
						W_TWR1_Factory_Counter = 1;
						publicVariable "W_TWR1_Barracks_Counter";
						
						//creates and orients barracks/armory control infostand.
						W_TWR1_Factory_Ctrl = createVehicle ["Land_InfoStand_V2_F", _newPos, [], 0, "NONE"];
						W_TWR1_Factory_Ctrl attachTo [_shed,[0, -17, -2.8]];
						W_TWR1_Factory_Ctrl setDir 90;
						W_TWR1_Factory_Ctrl setVariable ["R3F_LOG_disabled", true, true];
						W_TWR1_Factory_Ctrl setVehicleVarName "W_TWR1_Factory_Ctrl";
						publicVariable "W_TWR1_Factory_Ctrl";

						W_TWR1_Factory_Helipad = createVehicle ["Land_HelipadCircle_F", _newPos, [], 0, "NONE"];
						W_TWR1_Factory_Helipad attachTo [_shed, [0, -35, 0]];
						W_TWR1_Factory_Helipad setDir 90;
						W_TWR1_Factory_Helipad setVariable ["R3F_LOG_disabled", true, true];
						W_TWR1_Factory_Helipad setVehicleVarName "W_TWR1_Factory_Helipad";
						publicVariable "W_TWR1_Factory_Helipad";
						
						//platform in the event of land not being flat
						//Land_Cargo20_blue_F
						_b_container = createVehicle ["Land_Cargo20_blue_F", _newPos, [], 0, "NONE"];
						_b_container attachTo [_shed,[0, -17, -4.675]];
						_b_container setDir 0;
						_b_container setVariable ["R3F_LOG_disabled", true, true];
						
						//2 of these halogen
						_h_light1 = createVehicle ["Land_LampHalogen_F", _newPos, [], 0, "NONE"];
						_h_light1 attachTo [_shed, [7.9, 12.02, -3.8]];
						_h_light1 setDir -45;
						_h_light1 setVariable ["R3F_LOG_disabled", true, true];
						
						_h_light2 = createVehicle ["Land_LampHalogen_F", _newPos, [], 0, "NONE"];
						_h_light2 attachTo [_shed, [7.9, -12, -3.8]];
						_h_light2 setDir +45;
						_h_light2 setVariable ["R3F_LOG_disabled", true, true];
						
						//1 of these lamp
						_light1 = createVehicle ["Land_LampShabby_F", _newPos, [], 0, "NONE"];
						_light1 attachTo [_shed, [1, -17, -2]];
						_light1 setDir -90;
						_light1 setVariable ["R3F_LOG_disabled", true, true];
						
						//1 of these yellow light
						_yellowLight = createVehicle ["Land_Flush_Light_yellow_F", [getPos W_TWR1_Factory_Helipad select 0, getPos W_TWR1_Factory_Helipad select 1, 0], [], 0, "NONE"];
						_yellowLight setVariable ["R3F_LOG_disabled", true, true];
						
						//4 of these blue light
						_bluelight1 = createVehicle ["Land_runway_edgelight_blue_F", [(getPos W_TWR1_Factory_Helipad select 0) -5, (getPos W_TWR1_Factory_Helipad select 1) -5, 0], [], 0, "NONE"];
						_bluelight1 setVariable ["R3F_LOG_disabled", true, true];
						
						_bluelight3 = createVehicle ["Land_runway_edgelight_blue_F", [(getPos W_TWR1_Factory_Helipad select 0) -5, (getPos W_TWR1_Factory_Helipad select 1) +5, 0], [], 0, "NONE"];
						_bluelight3 setVariable ["R3F_LOG_disabled", true, true];
						
						_bluelight4 = createVehicle ["Land_runway_edgelight_blue_F", [(getPos W_TWR1_Factory_Helipad select 0) +5, (getPos W_TWR1_Factory_Helipad select 1) -5, 0], [], 0, "NONE"];
						_bluelight4 setVariable ["R3F_LOG_disabled", true, true];
						
						_bluelight6 = createVehicle ["Land_runway_edgelight_blue_F", [(getPos W_TWR1_Factory_Helipad select 0) +5, (getPos W_TWR1_Factory_Helipad select 1) +5, 0], [], 0, "NONE"];
						_bluelight6 setVariable ["R3F_LOG_disabled", true, true];
						
						//3 of these for markers in the vehicle factory
						W_TWR1_Factory_Spawn1 = createVehicle ["Land_Flush_Light_green_F", _newPos, [], 0, "NONE"];
						W_TWR1_Factory_Spawn1 attachTo [_shed, [0, 8, -3.8]];
						W_TWR1_Factory_Spawn1 setVariable ["R3F_LOG_disabled", true, true];
						W_TWR1_Factory_Spawn1 setVehicleVarName "W_TWR1_Factory_Spawn1";
						publicVariable "W_TWR1_Factory_SpawnMarker1";
						
						W_TWR1_Factory_Spawn2 = createVehicle ["Land_Flush_Light_green_F", _newPos, [], 0, "NONE"];
						W_TWR1_Factory_Spawn2 attachTo [_shed, [0, 0, -3.8]];
						W_TWR1_Factory_Spawn2 setVariable ["R3F_LOG_disabled", true, true];
						W_TWR1_Factory_Spawn2 setVehicleVarName "W_TWR1_Factory_Spawn2";
						publicVariable "W_TWR1_Factory_SpawnMarker2";
						
						W_TWR1_Factory_Spawn3 = createVehicle ["Land_Flush_Light_green_F", _newPos, [], 0, "NONE"];
						W_TWR1_Factory_Spawn3 attachTo [_shed, [0, -8, -3.8]];
						W_TWR1_Factory_Spawn3 setVariable ["R3F_LOG_disabled", true, true];
						W_TWR1_Factory_Spawn3 setVehicleVarName "W_TWR1_Factory_Spawn3";
						publicVariable "W_TWR1_Factory_SpawnMarker3";
					
						//Subtracts resource cost from variable
						W_TWR1_Resources = W_TWR1_Resources - 750;
						publicVariable "W_TWR1_Resources";
						ctrlSetText[1000, format["Resources = %1", W_TWR1_Resources]];
					
					} else {
						hint "Not enough resources!";
					};
				} else {
					hint "MOB Vehicle Factory already exists!";
				};

			};
			case "FactUpgrade":{
				hint "Feature coming soon!";
			};
			case "RadarBuild":{
				hint "Feature coming soon!";
			};
			case "RadarUpgrade":{
				hint "Feature coming soon!";
			};
		};
	};
	case "ResourceDeposit":{
		switch (_this select 1) do{
			case "deposit":{
			
				//Make a list of the barrels within the radius of the marker.
				_barrels = nearestObjects [getMarkerPos "W_TWR1_Marker", ["Land_MetalBarrel_F"], 10];
			
				_payOut = count _barrels * 100;
				_addResources = count _barrels * 100;
		
				//run a loop that goes through each barrel and deletes it.
				if (count _barrels > 0) then {
					{
						deleteVehicle _x;
					} forEach _barrels;
					hint format ["You have been awarded %1 credits. The base has recieved %2 resources.", _payout, _addResources];
				} else {
					hint "No barrels Found.";
				};
				//add our credits and resources to the pool, then put it back in its scope
				playerCredits = playerCredits + _payOut;
				W_TWR1_Resources = W_TWR1_Resources + _addResources;
				publicVariable "W_TWR1_Resources";
		
				//update the dialog display to show the new resource value
				ctrlSetText[1000, format["Resources = %1", W_TWR1_Resources]];
				
				//reset our local variables back to 0
				_payOut = 0;
				_addResources = 0;
			};
	
			case "withdraw":{
				hint "Cost is 125 credits per barrel withdraw.";
		
				//if loop within if loop to check 
				if (W_TWR1_Resources > 99) then {
					if (playerCredits > 124) then {
						createVehicle ["Land_MetalBarrel_F", getMarkerPos "W_TWR1_Marker", [], 0, "NONE"];
						playerCredits = playerCredits - 125;
						W_TWR1_Resources = W_TWR1_Resources - 100;
						publicVariable "W_TWR1_Resources";
						ctrlSetText[1000, format["Resources = %1", W_TWR1_Resources]];
					} else {
						hint "You don't have enough credits!";
					};
				} else {
					hint "The base doesn't have enough resources!";
				};
			};
		};
	};
};