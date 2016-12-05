comment "Exported from Arsenal by Chypsa";

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
_this forceAddUniform "rhsgref_uniform_specter";
for "_i" from 1 to 6 do {_this addItemToUniform "ACE_fieldDressing";};
_this addItemToUniform "ACE_EarPlugs";
_this addItemToUniform "ACE_Flashlight_KSF1";
for "_i" from 1 to 3 do {_this addItemToUniform "ACE_morphine";};
_this addItemToUniform "rhsusf_ANPVS_15";
_this addItemToUniform "rhs_mag_9x18_8_57N181S";
_this addVest "rhs_6b23_digi_vydra_3m";
for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_rdg2_white";};
for "_i" from 1 to 7 do {_this addItemToVest "rhs_10Rnd_762x54mmR_7N1";};
for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_rgd5";};
_this addHeadgear "rhsgref_fieldcap_ttsko_digi";

comment "Add weapons";
_this addWeapon "rhs_weap_svdp_wd_npz";
_this addPrimaryWeaponItem "rhsusf_acc_SpecterDR_OD";
_this addWeapon "rhs_weap_makarov_pm";
_this addWeapon "ACE_VectorDay";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "tf_microdagr";
_this linkItem "ItemRadio";
_this linkItem "ItemGPS";
