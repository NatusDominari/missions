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
_this addVest "V_PlateCarrierSpec_rgr";
_this addHeadgear "H_HelmetB_light_desert";

comment "Add items";
_this linkItem "ItemWatch";
