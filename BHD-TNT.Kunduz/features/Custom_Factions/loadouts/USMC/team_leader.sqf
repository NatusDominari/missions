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
for "_i" from 1 to 2 do {_this addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
_this addVest "rhsusf_iotv_ocp_Rifleman";
for "_i" from 1 to 8 do {_this addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 4 do {_this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
for "_i" from 1 to 4 do {_this addItemToVest "MiniGrenade";};
for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_mk84";};
for "_i" from 1 to 2 do {_this addItemToVest "SmokeShell";};
_this addBackpack "B_Kitbag_mcamo";
for "_i" from 1 to 5 do {_this addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 5 do {_this addItemToBackpack "ACE_CableTie";};
_this addItemToBackpack "ACE_EarPlugs";
for "_i" from 1 to 5 do {_this addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 5 do {_this addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 2 do {_this addItemToBackpack "rhsusf_m112_mag";};
_this addHeadgear "rhsusf_opscore_mc_cover_pelt_cam";

comment "Add weapons";
_this addWeapon "rhs_weap_mk18_d";
_this addPrimaryWeaponItem "rhsusf_acc_anpeq15";
_this addPrimaryWeaponItem "optic_Holosight";
_this addPrimaryWeaponItem "rhsusf_acc_grip2_tan";
_this addWeapon "rhsusf_weap_glock17g4";
_this addWeapon "ACE_VectorDay";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";
_this linkItem "ItemGPS";

comment "Set identity";
_this setFace "WhiteHead_01";
_this setSpeaker "Male10ENG";
