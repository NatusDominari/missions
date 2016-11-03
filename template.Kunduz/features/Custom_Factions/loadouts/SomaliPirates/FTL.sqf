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
_this forceAddUniform "rhsgref_uniform_woodland";
_this addItemToUniform "rhs_mag_9x18_8_57N181S";
_this addVest "V_TacChestrig_oli_F";
for "_i" from 1 to 2 do {_this addItemToVest "ACE_fieldDressing";};
_this addItemToVest "ACE_morphine";
_this addItemToVest "rhs_mag_9x18_8_57N181S";
for "_i" from 1 to 4 do {_this addItemToVest "rhs_30Rnd_762x39mm";};
for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_rgd5";};
_this addHeadgear "rhs_tsh4";

comment "Add weapons";
_this addWeapon "rhs_weap_akms";
_this addWeapon "rhs_weap_makarov_pm";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";

comment "Set identity";
_this setFace "AfricanHead_01";
_this setSpeaker "Male01PER";
