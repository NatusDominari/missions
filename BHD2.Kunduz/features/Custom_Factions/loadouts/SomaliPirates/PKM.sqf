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
_this forceAddUniform "rhsgref_uniform_woodland_olive";
for "_i" from 1 to 3 do {_this addItemToUniform "rhs_mag_9x18_8_57N181S";};
_this addVest "rhs_vest_pistol_holster";
for "_i" from 1 to 2 do {_this addItemToVest "ACE_fieldDressing";};
_this addItemToVest "ACE_morphine";
_this addItemToVest "rhs_mag_9x18_8_57N181S";
_this addBackpack "rhs_sidor";
for "_i" from 1 to 3 do {_this addItemToBackpack "rhs_100Rnd_762x54mmR_green";};
_this addGoggles "rhs_scarf";

comment "Add weapons";
_this addWeapon "rhs_weap_pkm";
_this addWeapon "rhs_weap_makarov_pm";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";

comment "Set identity";
_this setFace "AfricanHead_02";
_this setSpeaker "Male03PER";
