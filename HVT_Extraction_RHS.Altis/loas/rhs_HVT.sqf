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
_this forceAddUniform "rhs_uniform_vdv_mflora";
_this addItemToUniform "rhs_mag_9x18_8_57N181S";
_this addItemToUniform "rhs_30Rnd_545x39_AK";

comment "Add weapons";
_this addWeapon "rhs_weap_ak105";
_this addPrimaryWeaponItem "rhs_acc_dtk";
_this addPrimaryWeaponItem "rhs_acc_2dpZenit";
_this addWeapon "rhs_weap_makarov_pm";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";

comment "Set identity";
_this setFace "WhiteHead_07";
_this setSpeaker "RHS_Male01RUS";
