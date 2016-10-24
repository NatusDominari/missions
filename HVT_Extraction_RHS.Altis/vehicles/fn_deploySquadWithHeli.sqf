// usage : [destination position, heli spawn position, infantry spawn position,(opt)group class name,(opt)heli class name,(opt)group side] spawn HW_fnc_deploySquadWithHeli;
private ["_sideIndependent","_groupInfantry","_vehicleHeli","_heli","_heliGroup","_wp1","_wp2"];

params [
	"_destinationPos",
	"_heliSpawnPos",
	"_infantrySpawnPos",
	["_groupInfantryClass",configfile >> "CfgGroups" >> "Indep" >> "IND_F" >> "Infantry" >> "HAF_InfSquad"],
	["_vehicleHeliClass","I_Heli_Transport_02_F"],
	["_side",resistance]
];

_sideIndependent = createCenter _side;
_groupInfantry = [_infantrySpawnPos, _side, _groupInfantryClass] call BIS_fnc_spawnGroup;
_vehicleHeli = [_heliSpawnPos, 0, _vehicleHeliClass, _side] call BIS_fnc_spawnVehicle;
_heli = _vehicleHeli select 0;
_heliGroup = _vehicleHeli select 2;
_heliGroup setBehaviour "CARELESS";
_heliGroup setCombatMode "BLUE";

{
	_x moveInCargo _heli;
} forEach units _groupInfantry;

_wp1 = _heliGroup addWaypoint [_destinationPos, 0];
_wp1 setWaypointType "TR UNLOAD";
_wp1 setWaypointBehaviour "CARELESS";

_wp2 = _heliGroup addWaypoint [_heliSpawnPos, 0];
_wp2 setWaypointType "GETOUT";
_wp2 setWaypointBehaviour "CARELESS";

// wait for infantry squad to exit
while { ({_x in _heli} count units _groupInfantry)>0 } do {
	sleep 5;
};

// start a 200m search radius
[_groupInfantry, _destinationPos, 200] call BIS_fnc_taskPatrol;

// wait for heli to be empty
while { ({ _x in _heli } count units _heliGroup)>0 || isEngineOn _heli} do {
	sleep 5;
};

// delete heli crew
{
	_heli deleteVehicleCrew _x;
} forEach units _heliGroup;

// delete heli and his group
deleteVehicle _heli;
deleteGroup _heliGroup;