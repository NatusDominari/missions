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
_this addItemToUniform "muzzle_snds_H";
_this addItemToUniform "NVGoggles_INDEP";
for "_i" from 1 to 2 do {_this addItemToUniform "SmokeShell";};
_this addVest "V_PlateCarrierGL_rgr";
for "_i" from 1 to 2 do {_this addItemToVest "FirstAidKit";};
for "_i" from 1 to 2 do {_this addItemToVest "MiniGrenade";};
for "_i" from 1 to 3 do {_this addItemToVest "30Rnd_65x39_caseless_mag";};
for "_i" from 1 to 2 do {_this addItemToVest "1Rnd_Smoke_Grenade_shell";};
_this addItemToVest "1Rnd_HE_Grenade_shell";
_this addItemToVest "1Rnd_HE_Grenade_shell";
_this addItemToVest "16Rnd_9x21_Mag";
_this addHeadgear "H_HelmetB";
comment "Add weapons";
_this addWeapon "arifle_MX_GL_F";
_this addPrimaryWeaponItem "acc_flashlight";
_this addPrimaryWeaponItem "optic_Holosight";
_this addWeapon "hgun_P07_F";
_this addWeapon "Binocular";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";
_this linkItem "ItemGPS";
