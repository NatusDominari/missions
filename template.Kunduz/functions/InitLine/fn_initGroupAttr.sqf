/*
 * set unit's group-related properties, "team" (sub-group) color
 * and (if leader) the group name
 *
 * example:
 *   "BLUE" call A3MT_fnc_initGroupAttr;
 *   ["RED", "A1"] call A3MT_fnc_initGroupAttr;    //on a group leader
 */

if (didJIP) exitWith {};

0 = [this, _this] spawn {
    params ["_unit", "_args"];
    _args params ["_color", "_grpname"];

    if (!isNil "_color" && !isDedicated) then {
        waitUntil { !isNull player };
        _unit assignTeam _color;
    };

    if (!isNil "_grpname" && isServer) then {
        private _grp = group _unit;
        if (leader _grp == _unit) then {
            _grp setGroupIdGlobal [_grpname];
        };
    };
};
