#include "features\init.sqf"

if (!isDedicated) then {
    titleText ["GATHERING STUDIOS PRESENT", "BLACK FADED", 5];
    sleep 5;
    titleText ["","BLACK IN",4];
    sleep 4;
    _quote = composeText [
        parseText "<t size='1.5' align='center' shadow='1'>OPERATION NEPTUNE SPEAR</t>"
    ];

    [_quote] spawn BIS_fnc_dynamicText;

    sleep 5;
};

// disable saving
enableSaving [false, false];
enableSentences false;

setTerrainGrid 6.25;
setViewDistance 2000;
setObjectViewDistance [2000,800];