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
_this forceAddUniform "U_I_G_Story_Protagonist_F";
for "_i" from 1 to 3 do {_this addItemToUniform "rhs_30Rnd_545x39_AK";};
_this addVest "rhs_vest_commander";
_this addItemToVest "ACE_morphine";
for "_i" from 1 to 2 do {_this addItemToVest "ACE_fieldDressing";};
_this addItemToVest "rhs_mag_f1";
for "_i" from 1 to 3 do {_this addItemToVest "rhs_30Rnd_545x39_AK";};
_this addBackpack "rhs_assault_umbts_engineer_empty";
for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_fieldDressing";};
_this addItemToBackpack "ACE_morphine";
_this addItemToBackpack "ACE_Clacker";
for "_i" from 1 to 3 do {_this addItemToBackpack "rhs_30Rnd_545x39_AK";};
_this addItemToBackpack "IEDLandSmall_Remote_Mag";
_this addItemToBackpack "IEDLandBig_Remote_Mag";
_this addHeadgear "rhs_ssh68";
_this addGoggles "G_Lowprofile";

comment "Add weapons";
_this addWeapon "rhs_weap_aks74u";
_this addPrimaryWeaponItem "rhs_acc_pgs64_74u";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";

comment "Set identity";
_this setFace "AfricanHead_02";
_this setSpeaker "RHS_Male01RUS";
