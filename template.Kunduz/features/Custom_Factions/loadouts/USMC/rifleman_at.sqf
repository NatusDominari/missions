comment "Exported from Arsenal by milivojm";

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
_this forceAddUniform "rhs_uniform_FROG01_d";
_this addItemToUniform "FirstAidKit";
_this addItemToUniform "rhsusf_ANPVS_14";
_this addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";
_this addVest "rhsusf_spc_rifleman";
for "_i" from 1 to 6 do {_this addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
_this addItemToVest "rhs_mag_an_m8hc";
for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m67";};
_this addHeadgear "rhsusf_lwh_helmet_marpatd_ess";
_this addGoggles "rhs_googles_clear";

comment "Add weapons";
_this addWeapon "rhs_weap_m16a4_carryhandle";
_this addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
_this addPrimaryWeaponItem "rhsusf_acc_ACOG_USMC";
_this addWeapon "rhs_weap_M136";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";
