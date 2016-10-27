#include "features\init.sqf"

if (!isDedicated) then {
    // black screen on start for 5 seconds
    titleText ["", "BLACK FADED", 5];
    sleep 2;

    playMusic "LeadTrack01_F_EPA";
    sleep 3;

    // title for 5 seconds
    titleText ["NATUS DOMINARI PRESENTS", "BLACK FADED", 2];
    sleep 2;

    titleText ["", "BLACK IN", 4];
    sleep 4;

    _quote = composeText [
        parseText "<t size='1.5' align='center'>OPERATION PEACEKEEPER</t>"
    ];

    [_quote] spawn BIS_fnc_dynamicText;

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