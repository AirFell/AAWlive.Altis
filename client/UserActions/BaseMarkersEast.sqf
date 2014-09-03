	//check and create base markers on all EAST clients
while {true} do {
	//Create Tower Markers if Towers Exist, otherwise delete markers.
	if (East_TWR1_Counter == 1) then {
		_MOBmarker = createMarkerLocal ["E_T1_Marker", getPos E_TWR1];
		_MOBmarker setMarkerShapeLocal "ICON";
		_MOBmarker setMarkerTypeLocal "o_hq";
		_MOBmarker setMarkerColorLocal "ColorEast";
		_MOBmarker setMarkerTextLocal "Main Operating Base";
	} else {
		deleteMarkerLocal "E_T1_Marker";
	};
	if (East_TWR2_Counter == 1) then {
		_FOB2marker = createMarkerLocal ["E_T2_Marker", getPos E_TWR2];
		_FOB2marker setMarkerShapeLocal "ICON";
		_FOB2marker setMarkerTypeLocal "FOB";
		_FOB2marker setMarkerColorLocal "ColorEast";
		_FOB2marker setMarkerTextLocal "FOB Tower #2";
	} else {
		deleteMarkerLocal "E_T2_Marker";
	};
	if (East_TWR3_Counter == 1) then {
		_FOB3marker = createMarkerLocal ["E_T3_Marker", getPos E_TWR2];
		_FOB3marker setMarkerShapeLocal "ICON";
		_FOB3marker setMarkerTypeLocal "FOB";
		_FOB3marker setMarkerColorLocal "ColorEast";
		_FOB3marker setMarkerTextLocal "FOB Tower #3";
	} else {
		deleteMarkerLocal "E_T3_Marker";
	};
	if (East_TWR4_Counter == 1) then {
		_FOB4marker = createMarkerLocal ["E_T4_Marker", getPos E_TWR2];
		_FOB4marker setMarkerShapeLocal "ICON";
		_FOB4marker setMarkerTypeLocal "FOB";
		_FOB4marker setMarkerColorLocal "ColorEast";
		_FOB4marker setMarkerTextLocal "FOB Tower #4";
	} else {
		deleteMarkerLocal "E_T4_Marker";
	};
	sleep 60;
};