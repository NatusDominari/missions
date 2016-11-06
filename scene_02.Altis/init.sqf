#include "features\init.sqf"

if (!isDedicated) then {
    // sets insignia of the player
    [player, "NatusDominariTaskForce"] call BIS_fnc_setUnitInsignia;
};

// disable saving
enableSaving [false, false];
enableSentences false;