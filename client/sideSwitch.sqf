

_nul = switch (side player) do {
	case west: {
		_nul = []execVM "client\UserActions\AddActionsWest.sqf";
		_nul = []execVM "client\UserActions\BaseMarkersWest.sqf";
		diag_log "The west side addActions are running!";
	};
		
	case east: {
		_nul = []execVM "client\UserActions\AddActionsEast.sqf";
		_nul = []execVM "client\UserActions\BaseMarkersEast.sqf";
		diag_log "The east side of addActions are running!";
	};
	
	case resistance: {
		_nul = []execVM "client\UserActions\AddActionsGuer.sqf";
		_nul = []execVM "client\UserActions\BaseMarkersGuer.sqf";
		diag_log "The guer side of addActions are running!";
	};
};