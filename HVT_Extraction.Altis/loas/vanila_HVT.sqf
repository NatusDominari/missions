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
_this forceAddUniform "U_I_pilotCoveralls";
_this addItemToUniform "NVGoggles_INDEP";
_this addItemToUniform "HandGrenade";
for "_i" from 1 to 2 do {_this addItemToUniform "SmokeShell";};
_this addItemToUniform "30Rnd_556x45_Stanag";
_this addItemToUniform "9Rnd_45ACP_Mag";
_this addGoggles "G_Bandanna_tan";

comment "Add weapons";
_this addWeapon "arifle_Mk20C_ACO_F";
_this addPrimaryWeaponItem "acc_flashlight";
_this addWeapon "hgun_ACPC2_F";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemRadio";
