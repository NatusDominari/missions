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
_this addVest "rhsusf_spc_iar";
for "_i" from 1 to 11 do {_this addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m67";};
_this addBackpack "rhsusf_assault_eagleaiii_coy_m27";
for "_i" from 1 to 20 do {_this addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
_this addHeadgear "rhsusf_lwh_helmet_marpatd_ess";
_this addGoggles "rhs_googles_clear";

comment "Add weapons";
_this addWeapon "rhs_weap_m27iar_grip";
_this addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
_this addPrimaryWeaponItem "rhsusf_acc_ACOG2_USMC";
_this addPrimaryWeaponItem "rhsusf_acc_harris_bipod";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";
