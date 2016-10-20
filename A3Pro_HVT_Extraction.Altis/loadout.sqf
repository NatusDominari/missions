// [unit,loadout] call loadout;

private ["_unit","_scriptName","_scriptFullName"];

_unit = _this select 0;
_scriptName = _unit getVariable "loadout";

if ((local _unit) and !(isNil "_scriptName")) then {
	_scriptFullName = "loas\" + _scriptName + ".sqf";
	_handle = _unit execVM _scriptFullName;
};