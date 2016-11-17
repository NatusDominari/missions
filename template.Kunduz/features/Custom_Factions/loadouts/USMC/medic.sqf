comment "Exported from Arsenal by Highway";

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
_this addItemToUniform "rhsusf_ANPVS_14";
_this addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";
_this addVest "rhsusf_spc_light";
for "_i" from 1 to 7 do {_this addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
_this addItemToVest "rhs_mag_an_m8hc";
for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m67";};
_this addBackpack "B_AssaultPack_cbr";
for "_i" from 1 to 30 do {_this addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_bloodIV_250";};
for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_bloodIV_500";};
_this addItemToBackpack "ACE_bloodIV";
for "_i" from 1 to 10 do {_this addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 15 do {_this addItemToBackpack "ACE_morphine";};
_this addHeadgear "rhs_booniehat2_marpatd";

comment "Add weapons";
_this addWeapon "rhs_weap_m4_carryhandle";
_this addPrimaryWeaponItem "rhsusf_acc_anpeq15_top";
_this addPrimaryWeaponItem "rhsusf_acc_ACOG_USMC";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";
_this linkItem "ItemGPS";
