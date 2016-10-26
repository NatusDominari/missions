#include "features\init.sqf"

if (!isDedicated) then {
    // black screen on start for 5 seconds
    titleText ["", "BLACK FADED", 5];
    sleep 5;

    // title for 5 seconds
    titleText ["NATUS DOMINARI PRESENTS", "BLACK FADED", 5];
    sleep 5;

    // ease in
    titleText ["", "BLACK IN", 3];
    sleep 5;

    // if you want to put mission name => put it here like this
    //   ["mission name"] call A3MT_fnc_instaOSD;
    // location and time is displayed on bottom right corner
    [] call A3MT_fnc_instaOSD;

    // sets insignia of the player
    [player, "NatusDominariTaskForce"] call BIS_fnc_setUnitInsignia;
};

// disable saving
enableSaving [false, false];