	//check and create base markers on all WEST clients
while {true} do {
	//Create Tower Markers if Towers Exist, otherwise delete markers.
	if (W_TWR1_Counter == 1) then {
		_MOBmarker = createMarkerLocal ["W_TWR1_Marker", getPos W_TWR1_Deposit_Marker];
		_MOBmarker setMarkerShapeLocal "ICON";
		_MOBmarker setMarkerTypeLocal "b_hq";
		_MOBmarker setMarkerColorLocal "ColorWest";
		_MOBmarker setMarkerTextLocal "Main Operating Base";
	} else {
		deleteMarkerLocal "W_TWR1_Marker";
	};
	if (W_TWR2_Counter == 1) then {
		_FOB2marker = createMarkerLocal ["W_TWR2_Marker", getPos W_TWR2_Deposit_Marker];
		_FOB2marker setMarkerShapeLocal "ICON";
		_FOB2marker setMarkerTypeLocal "b_hq";
		_FOB2marker setMarkerColorLocal "ColorWest";
		_FOB2marker setMarkerTextLocal "FOB Tower #2";
	} else {
		deleteMarkerLocal "W_TWR2_Marker";
	};
	if (W_TWR3_Counter == 1) then {
		_FOB3marker = createMarkerLocal ["W_TWR3_Marker", getPos W_TWR2_Deposit_Marker];
		_FOB3marker setMarkerShapeLocal "ICON";
		_FOB3marker setMarkerTypeLocal "b_hq";
		_FOB3marker setMarkerColorLocal "ColorWest";
		_FOB3marker setMarkerTextLocal "FOB Tower #3";
	} else {
		deleteMarkerLocal "W_TWR3_Marker";
	};
	if (W_TWR4_Counter == 1) then {
		_FOB4marker = createMarkerLocal ["W_TWR4_Marker", getPos W_TWR2_Deposit_Marker];
		_FOB4marker setMarkerShapeLocal "ICON";
		_FOB4marker setMarkerTypeLocal "b_hq";
		_FOB4marker setMarkerColorLocal "ColorWest";
		_FOB4marker setMarkerTextLocal "FOB Tower #4";
	} else {
		deleteMarkerLocal "W_TWR4_Marker";
	};
	sleep 60;
};