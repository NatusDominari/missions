comment "Exported from Arsenal by Chris";

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
_this forceAddUniform "U_C_Poloshirt_salmon";
_this addVest "V_TacChestrig_oli_F";
_this addItemToVest "ACE_morphine";
for "_i" from 1 to 2 do {_this addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 4 do {_this addItemToVest "rhs_30Rnd_762x39mm";};
_this addItemToVest "rhs_mag_f1";
_this addGoggles "rhs_balaclava";

comment "Add weapons";
_this addWeapon "rhs_weap_akms";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";

comment "Set identity";
_this setFace "PersianHead_A3_03";
_this setSpeaker "RHS_Male01RUS";
