//Commented out for quicker testing

/*
_RandomPosW = westRespawnArray select floor random count westRespawnArray;
"respawn_west" setMarkerPosLocal getMarkerPos _RandomPosW;

_RandomPosE = EastRespawnArray select floor random count EastRespawnArray;
"respawn_east" setMarkerPosLocal getMarkerPos _RandomPosE;

_RandomPosG = GuerRespawnArray select floor random count GuerRespawnArray;
"respawn_guerrila" setMarkerPosLocal getMarkerPos _RandomPosG;
*/

waitUntil {alive player};
_nul = []execVM "client\sideSwitch.sqf";

