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
for "_i" from 1 to 2 do {_this addItemToUniform "SmokeShell";};
_this addVest "V_PlateCarrierGL_rgr";
for "_i" from 1 to 2 do {_this addItemToVest "FirstAidKit";};
for "_i" from 1 to 2 do {_this addItemToVest "MiniGrenade";};
_this addBackpack "B_AssaultPack_dgtl";
for "_i" from 1 to 2 do {_this addItemToBackpack "150Rnd_762x54_Box_Tracer";};
_this addItemToVest "16Rnd_9x21_Mag";
_this addHeadgear "H_HelmetB";

comment "Add weapons";
_this addWeapon "LMG_Zafir_F";
_this addPrimaryWeaponItem "acc_flashlight";
_this addPrimaryWeaponItem "optic_Holosight";
_this addWeapon "hgun_P07_F";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";
_this linkItem "ItemGPS";
