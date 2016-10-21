// [unit,(opt)loadoutFolder,(opt)loadout script name] call HW_fnc_loadGear;

params ["_unit",["_folder","loas"],["_scriptName",nil]];

if (isNil "_scriptName") then {
	_scriptName = faction _unit;
};

if ((local _unit) and !(isNil "_scriptName")) then {
	private "_scriptFullName";
	_scriptFullName = format ["%1\%2.sqf", _folder, _scriptName];
	_handle = _unit execVM _scriptFullName;
};