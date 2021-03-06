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
_this forceAddUniform "rhs_uniform_cu_ocp";
for "_i" from 1 to 6 do {_this addItemToUniform "ACE_fieldDressing";};
_this addItemToUniform "ACE_EarPlugs";
_this addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 3 do {_this addItemToUniform "ACE_morphine";};
_this addItemToUniform "rhsusf_ANPVS_15";
_this addItemToUniform "rhsusf_mag_17Rnd_9x19_JHP";
_this addVest "rhsusf_iotv_ocp_Repair";
for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 8 do {_this addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
_this addBackpack "B_FieldPack_cbr";
for "_i" from 1 to 20 do {_this addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 20 do {_this addItemToBackpack "ACE_fieldDressing";};
_this addHeadgear "rhsusf_ach_helmet_ocp";

comment "Add weapons";
_this addWeapon "rhs_weap_hk416d10";
_this addWeapon "rhsusf_weap_glock17g4";

comment "Add items";
_this linkItem "tf_microdagr";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemRadio";
_this linkItem "ItemGPS";