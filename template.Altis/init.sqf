#include "features\init.sqf"

if (!isDedicated) then {
    titleText ["", "BLACK FADED", 5];
    sleep 5;
    titleText ["NATUS DOMINARI PRESENTS", "BLACK FADED", 5];
    sleep 5;
    titleText ["", "BLACK IN", 3];
    sleep 5;
    // if you want to put mission name => put it here like this
    //   ["mission name"] call A3MT_fnc_instaOSD;
    [] call A3MT_fnc_instaOSD;
};

enableSaving false;