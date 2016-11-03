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
_this forceAddUniform "U_C_Poloshirt_tricolour";
_this addVest "V_BandollierB_cbr";
_this addItemToVest "ACE_morphine";
for "_i" from 1 to 2 do {_this addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 5 do {_this addItemToVest "rhs_30Rnd_545x39_AK";};
_this addBackpack "rhs_rpg_empty";
for "_i" from 1 to 2 do {_this addItemToBackpack "rhs_rpg7_TBG7V_mag";};
_this addItemToBackpack "rhs_rpg7_PG7VL_mag";
_this addGoggles "G_Balaclava_blk";

comment "Add weapons";
_this addWeapon "rhs_weap_aks74u_folded";
_this addPrimaryWeaponItem "rhs_acc_pgs64_74u";
_this addWeapon "rhs_weap_rpg7";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";

comment "Set identity";
_this setFace "AfricanHead_03";
_this setSpeaker "Male02PER";
