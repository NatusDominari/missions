// [unit,[list of marker names]] call HW_fnc_randomSpawn;
// executed only on server due to global effect
params ["_unit","_listOfMarkers"];
private "_selectedMarker";

if (isServer) then {
	_selectedMarker = _listOfMarkers call BIS_fnc_selectRandom;
	_unit setPos (getMarkerPos _selectedMarker);
};
