#include "features\init.sqf"

if (!isDedicated) then {
    private _layer_number = 788;

    // black screen on start for 5 seconds
    _layer_number cutText ["", "BLACK FADED", 5];
    sleep 5;

    _quote = composeText [
        parseText "<t size='1' align='left' shadow='1'>I got your position. I got the target. We're inbound and hot.</t>"
    ];

    [_quote,0,0.45,5,3,0,789] spawn BIS_fnc_dynamicText;
    sleep 7;

    0 fadeMusic 0.5;
    playMusic "LeadTrack02_F_EXP";
    sleep 4;
    20 fadeMusic 0.25;

    // title for 5 seconds
    _layer_number cutText ["NATUS DOMINARI PRESENTS", "BLACK FADED", 5];
    sleep 5;

    _layer_number cutText ["","BLACK FADED",2];
    sleep 3;

    _quote = composeText [
        parseText "<t size='1.5' align='center' shadow='2'>BLACK HAWK DOWN</t>",
        lineBreak,
        parseText "<t size='1.2' align='center' shadow='2'>Trinitrotoluen</t>"
    ];

    [_quote,0,0.45,3,2,0,789] spawn BIS_fnc_dynamicText;
    sleep 7;

    _layer_number cutText ["","BLACK IN",5];
    sleep 6;

    // if you want to put mission name => put it here like this
    //   ["mission name"] call A3MT_fnc_instaOSD;
    // location and time is displayed on bottom right corner
    [] call A3MT_fnc_instaOSD;

    sleep 3;
};

if (!isDedicated) then {
    private _team_color = player getVariable ["team","YELLOW"];
    [player, _team_color] call ace_interaction_fnc_joinTeam;
};

// disable saving
enableSaving [false, false];

if (isServer) then {
    [getMarkerPos "marker_start",((getMarkerPos "respawn_west") vectorDiff (getMarkerPos "marker_start")) vectorAdd (getMarkerPos "respawn_west"),50,"LIMITED","RHS_UH1Y_FFAR",west] call BIS_fnc_ambientFlyBy;
    private _curator = allCurators select 0;
    _curator addCuratorEditableObjects [allUnits,true];
};
