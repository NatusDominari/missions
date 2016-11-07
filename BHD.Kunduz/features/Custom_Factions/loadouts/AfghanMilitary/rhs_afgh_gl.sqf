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
for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_rgd5";};
for "_i" from 1 to 5 do {_this addItemToVest "rhs_30Rnd_545x39_AK";};
_this addBackpack "B_TacticalPack_oli";
for "_i" from 1 to 4 do {_this addItemToBackpack "rhs_VOG25";};
_this addHeadgear "rhs_6b28_green";

comment "Add weapons";
_this addWeapon "rhs_weap_ak74m_gp25";
_this addPrimaryWeaponItem "rhs_acc_dtk";
_this addPrimaryWeaponItem "rhs_acc_pkas";
_this addWeapon "rhs_weap_makarov_pm";
_this addWeapon "ACE_VectorDay";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "tf_microdagr";
_this linkItem "ItemRadio";
_this linkItem "ItemGPS";
