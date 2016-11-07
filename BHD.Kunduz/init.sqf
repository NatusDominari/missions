#include "features\init.sqf"

if (!isDedicated) then {
    // black screen on start for 5 seconds
    titleText ["", "BLACK FADED", 5];
    sleep 4;
    playMusic "BHDMainTheme";
    sleep 1;

    // title for 5 seconds
    titleText ["NATUS DOMINARI PRESENTS", "BLACK FADED", 5];
    sleep 5;
    titleText ["","BLACK IN",0];
    cutText ["","BLACK FADED",2];
    sleep 3;

    _quote = composeText [
        parseText "<t size='1.5' align='center' shadow='2'>BLACK HAWK DOWN</t>"
    ];
    [_quote] spawn BIS_fnc_dynamicText;
    sleep 8;

    cutText ["MISSION DESIGN\nSkywalker","BLACK FADED",3];
    sleep 5;

    cutText ["LOADOUTS\nChris & Chypsa","BLACK FADED",3];
    sleep 5;

    cutText ["SCRIPTING\nHighway","BLACK FADED",3];
    sleep 5;

    cutText ["MUSIC\nHans Zimmer","BLACK FADED",3];
    sleep 5;

    cutText ["","BLACK IN",2];
    sleep 6;

    // if you want to put mission name => put it here like this
    //   ["mission name"] call A3MT_fnc_instaOSD;
    // location and time is displayed on bottom right corner
    [] call A3MT_fnc_instaOSD;

    // sets insignia of the player
    [player, "NatusDominariTaskForce"] call BIS_fnc_setUnitInsignia;
};

if (isServer) then {
    sl_1 assignTeam "MAIN";

    ar_a_1 assignTeam "RED";
    gl_a_1 assignTeam "RED";
    r_a_1 assignTeam "RED";
    tl_a_1 assignTeam "RED";

    ar_b_1 assignTeam "GREEN";
    gl_b_1 assignTeam "GREEN";
    r_b_1 assignTeam "GREEN";
    tl_b_1 assignTeam "GREEN";
};

// disable saving
enableSaving [false, false];