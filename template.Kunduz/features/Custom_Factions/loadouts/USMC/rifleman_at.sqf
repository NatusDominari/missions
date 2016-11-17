comment "Exported from Arsenal by Skywalker";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;

comment "Add containers";
_this forceAddUniform "rhs_uniform_g3_mc";
_this addItemToUniform "rhsusf_ANPVS_15";
for "_i" from 1 to 3 do {_this addItemToUniform "ACE_fieldDressing";};
_this addItemToUniform "rhs_m136_mag";
for "_i" from 1 to 2 do {_this addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
_this addVest "rhsusf_iotv_ocp_Rifleman";
for "_i" from 1 to 4 do {_this addItemToVest "MiniGrenade";};
for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_mk84";};
for "_i" from 1 to 2 do {_this addItemToVest "SmokeShell";};
for "_i" from 1 to 4 do {_this addItemToVest "rhs_mag_M433_HEDP";};
for "_i" from 1 to 6 do {_this addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 4 do {_this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
_this addBackpack "B_Kitbag_mcamo";
for "_i" from 1 to 5 do {_this addItemToBackpack "ACE_CableTie";};
for "_i" from 1 to 5 do {_this addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 5 do {_this addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_this addItemToBackpack "rhsusf_m112_mag";};
for "_i" from 1 to 3 do {_this addItemToBackpack "MiniGrenade";};
for "_i" from 1 to 3 do {_this addItemToBackpack "SmokeShell";};
for "_i" from 1 to 3 do {_this addItemToBackpack "rhs_mag_mk84";};
_this addHeadgear "rhsusf_opscore_mc_cover_pelt_cam";

comment "Add weapons";
_this addWeapon "rhs_weap_mk18_d";
_this addPrimaryWeaponItem "rhsusf_acc_ACOG";
_this addWeapon "rhs_weap_M136";
_this addWeapon "rhsusf_weap_glock17g4";
_this addWeapon "ACE_VectorDay";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";
_this linkItem "ItemGPS";

