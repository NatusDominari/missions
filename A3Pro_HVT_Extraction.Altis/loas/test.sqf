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
_this forceAddUniform "U_B_CombatUniform_mcam_tshirt";
_this addItemToUniform "FirstAidKit";
for "_i" from 1 to 3 do {_this addItemToUniform "30Rnd_65x39_caseless_mag";};
_this addVest "V_PlateCarrierSpec_rgr";
for "_i" from 1 to 2 do {_this addItemToVest "30Rnd_65x39_caseless_mag";};
for "_i" from 1 to 2 do {_this addItemToVest "16Rnd_9x21_Mag";};
_this addHeadgear "H_HelmetB_light_desert";

comment "Add weapons";
_this addWeapon "arifle_MX_pointer_F";
// _this addPrimaryWeaponItem "acc_pointer_IR";
//_this addWeapon "hgun_P07_F";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
//_this linkItem "ItemRadio";
//_this linkItem "NVGoggles";
