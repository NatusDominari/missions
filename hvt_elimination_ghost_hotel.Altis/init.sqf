#include "features\init.sqf"

if (!isDedicated) then {
    titleText ["","BLACK FADED",3];
    3 fadeMusic 0.25;
    playMusic "LeadTrack04_F";
    sleep 3;
    titleText ["GATHERING STUDIO PRESENTS", "BLACK FADED", 5];
    sleep 5;
    titleText ["","BLACK IN",4];
    sleep 4;
    _quote = composeText [
        parseText "<t size='1.5' align='center' shadow='1'>OPERATION NEPTUNE SPEAR</t>"
    ];
    [_quote] spawn BIS_fnc_dynamicText;
    sleep 7;

    // if you want to put mission name => put it here like this
    //   ["mission name"] call A3MT_fnc_instaOSD;
    // location and time is displayed on bottom right corner
    [] call A3MT_fnc_instaOSD;
};

// disable saving
enableSaving [false, false];

// disable sentences
enableSentences false;

// disable engine artillery
enableEngineArtillery false;