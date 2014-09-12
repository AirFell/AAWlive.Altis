diag_log "Mission_init.sqf is running!";
//starts a new mission after 15 min (900) seconds
sleep 30;

//random mission chooser thing. adjust this number and the switch in missions.sqf for more missions.
_random = floor(random 5) + 1;
MissionCounter = MissionCounter + 1;
_nul = [_random]execVM "server\missions\missions.sqf";