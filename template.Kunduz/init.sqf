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
    sleep 5;

    cutText ["","BLACK IN",2];
    sleep 6;

    // if you want to put mission name => put it here like this
    //   ["mission name"] call A3MT_fnc_instaOSD;
    // location and time is displayed on bottom right corner
    [] call A3MT_fnc_instaOSD;
};

if (!isDedicated) then {
    private _team_color = player getVariable ["team","YELLOW"];
    [player, _team_color] call ace_interaction_fnc_joinTeam;
};

// disable saving
enableSaving [false, false];