comment "Exported from Arsenal by Smoky";

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
_this forceAddUniform "U_I_G_Story_Protagonist_F";
_this addItemToUniform "NVGoggles_INDEP";
_this addItemToUniform "muzzle_snds_H";
for "_i" from 1 to 4 do {_this addItemToUniform "SmokeShell";};
_this addVest "V_PlateCarrierGL_rgr";
for "_i" from 1 to 8 do {_this addItemToVest "FirstAidKit";};
for "_i" from 1 to 2 do {_this addItemToVest "MiniGrenade";};
_this addItemToVest "16Rnd_9x21_Mag";
for "_i" from 1 to 2 do {_this addItemToVest "30Rnd_65x39_caseless_mag";};
_this addBackpack "B_AssaultPack_mcamo";
_this addItemToBackpack "Medikit";

_this addHeadgear "H_HelmetB";

comment "Add weapons";
_this addWeapon "arifle_MX_F";
_this addPrimaryWeaponItem "acc_flashlight";
_this addPrimaryWeaponItem "optic_Holosight";
_this addWeapon "hgun_P07_F";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";
_this linkItem "ItemGPS";
