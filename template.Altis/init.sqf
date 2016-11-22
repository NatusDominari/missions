#include "features\init.sqf"

if (!isDedicated) then {
    // if you want to put mission name => put it here like this
    //   ["mission name"] call A3MT_fnc_instaOSD;
    // location and time is displayed on bottom right corner
    [] call A3MT_fnc_instaOSD;

    // sets insignia of the player
    [player, "NatusDominariTaskForce"] call BIS_fnc_setUnitInsignia;
};

if (!isDedicated) then {
    private _team_color = player getVariable ["team","YELLOW"];
    [player, _team_color] call ace_interaction_fnc_joinTeam;
};

// disable saving
enableSaving [false, false];