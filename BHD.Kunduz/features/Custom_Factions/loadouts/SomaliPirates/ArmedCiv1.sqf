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
_this forceAddUniform "U_C_Poor_1";
_this addBackpack "B_TacticalPack_oli";
_this addItemToBackpack "ACE_morphine";
for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 6 do {_this addItemToBackpack "rhsgref_5Rnd_762x54_m38";};
_this addHeadgear "H_Bandanna_khk";
_this addGoggles "G_Bandanna_khk";

comment "Add weapons";
_this addWeapon "rhs_weap_m38";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";

comment "Set identity";
_this setFace "AfricanHead_01";
_this setSpeaker "Male03PER";
