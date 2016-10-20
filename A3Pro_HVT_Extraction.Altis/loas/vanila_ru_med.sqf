comment "Exported from Arsenal by Smoky";

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
_this forceAddUniform "U_O_CombatUniform_ocamo";
_this addItemToUniform "NVGoggles_OPFOR";
_this addItemToUniform "muzzle_snds_H";
for "_i" from 1 to 4 do {_this addItemToUniform "SmokeShell";};
_this addVest "V_TacVest_khk";
for "_i" from 1 to 2 do {_this addItemToVest "MiniGrenade";};
for "_i" from 1 to 2 do {_this addItemToVest "30Rnd_65x39_caseless_green";};
for "_i" from 1 to 2 do {_this addItemToVest "SmokeShell";};
_this addItemToVest "16Rnd_9x21_Mag";
_this addBackpack "B_AssaultPack_cbr";
for "_i" from 1 to 8 do {_this addItemToBackpack "FirstAidKit";};
_this addItemToBackpack "Medikit";
_this addHeadgear "H_HelmetLeaderO_ocamo";

comment "Add weapons";
_this addWeapon "arifle_Katiba_C_F";
_this addPrimaryWeaponItem "acc_flashlight";
_this addPrimaryWeaponItem "optic_ACO_grn";
_this addWeapon "hgun_P07_F";
_this addWeapon "Binocular";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";
_this linkItem "ItemGPS";
