	//check and create base markers on all GUER clients
while {true} do {
	//Create Tower Markers if Towers Exist, otherwise delete markers.
	if (Guer_TWR1_Counter == 1) then {
		_MOBmarker = createMarkerLocal ["G_T1_Marker", getPos G_TWR1];
		_MOBmarker setMarkerShapeLocal "ICON";
		_MOBmarker setMarkerTypeLocal "n_hq";
		_MOBmarker setMarkerColorLocal "ColorGuer";
		_MOBmarker setMarkerTextLocal "Main Operating Base";
	} else {
		deleteMarkerLocal "G_T1_Marker";
	};
	if (Guer_TWR2_Counter == 1) then {
		_FOB2marker = createMarkerLocal ["G_T2_Marker", getPos G_TWR2];
		_FOB2marker setMarkerShapeLocal "ICON";
		_FOB2marker setMarkerTypeLocal "FOB";
		_FOB2marker setMarkerColorLocal "ColorGuer";
		_FOB2marker setMarkerTextLocal "FOB Tower #2";
	} else {
		deleteMarkerLocal "G_T2_Marker";
	};
	if (Guer_TWR3_Counter == 1) then {
		_FOB3marker = createMarkerLocal ["G_T3_Marker", getPos G_TWR2];
		_FOB3marker setMarkerShapeLocal "ICON";
		_FOB3marker setMarkerTypeLocal "FOB";
		_FOB3marker setMarkerColorLocal "ColorGuer";
		_FOB3marker setMarkerTextLocal "FOB Tower #3";
	} else {
		deleteMarkerLocal "G_T3_Marker";
	};
	if (Guer_TWR4_Counter == 1) then {
		_FOB4marker = createMarkerLocal ["G_T4_Marker", getPos G_TWR2];
		_FOB4marker setMarkerShapeLocal "ICON";
		_FOB4marker setMarkerTypeLocal "FOB";
		_FOB4marker setMarkerColorLocal "ColorGuer";
		_FOB4marker setMarkerTextLocal "FOB Tower #4";
	} else {
		deleteMarkerLocal "G_T4_Marker";
	};
	sleep 60;
};