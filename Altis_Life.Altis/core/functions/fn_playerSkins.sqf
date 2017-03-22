#include "..\..\script_macros.hpp"
/*
    File: fn_playerSkins.sqf
    Author: Daniel Stuart

    Description:
    Sets skins for players by their side and uniform.
*/
private ["_skinName"];

switch (playerSide) do {
    case civilian: {
        if (LIFE_SETTINGS(getNumber,"civ_skins") isEqualTo 1) then {
            if (uniform player isEqualTo "U_C_Poloshirt_redwhite") then {
                player setObjectTextureGlobal [0, "textures\roupas\civis\civilian_uniform_7.jpg"];
            };
            if (uniform player isEqualTo "U_Rangemaster") then {
                player setObjectTextureGlobal [0, "textures\roupas\civis\Spawninnovation.jpg"];
            };
        };
    };

    case west: {
        if (uniform player isEqualTo "U_Rangemaster") then {
            _skinName = "textures\Roupas\Policiais\Cop1DPA_Rcta.jpg";
            if (LIFE_SETTINGS(getNumber,"cop_extendedSkins") isEqualTo 1) then {
            };
            player setObjectTextureGlobal [0, _skinName];
        };
		
        if (uniform player isEqualTo "U_B_CombatUniform_mcam_vest") then {
            _skinName = "textures\Roupas\Policiais\Cop1DPA_Grad.jpg";
            if (LIFE_SETTINGS(getNumber,"cop_extendedSkins") isEqualTo 2) then {
            };
            player setObjectTextureGlobal [0, _skinName];
        };

		if (uniform player isEqualTo "U_B_CombatUniform_mcam_worn") then {
            _skinName = "textures\Roupas\Policiais\Cop1DPA_Ofcl.jpg";
            if (LIFE_SETTINGS(getNumber,"cop_extendedSkins") isEqualTo 3) then {				
            };
            player setObjectTextureGlobal [0, _skinName];
        };
        if (uniform player isEqualTo "U_B_CombatUniform_mcam") then {
            _skinName = "textures\Roupas\Policiais\cop_grpae.jpg";
            if (LIFE_SETTINGS(getNumber,"cop_extendedSkins") isEqualTo 13) then {                
            };
            player setObjectTextureGlobal [0, _skinName];
        };
		//Remover Mochila
		(unitBackpack player) setObjectTextureGlobal [0,""];
    };

    case independent: {
        if (uniform player isEqualTo "U_B_HeliPilotCoveralls") then {
            player setObjectTextureGlobal [0, "textures\Roupas\Medicos\medic_uniform2.jpg"];
        };
    };
};
