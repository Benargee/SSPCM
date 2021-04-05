
class CfgPatches
{
	class SSPCM_UI
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 1.0;
		requiredAddons[] = {"A3_Data_F","A3_UI_F_Bootcamp"};
	};
};


class RscButtonMenu;
class RscButton;
class RscBackgroundGUI;
class RscListBox;
class RscText;
class RscStructuredText;
class RscHTML;
class RscControlsGroup;

class BNRG_SSPCM_buttonLoad_s: RscButtonMenu
{
	idc = 914492;
	
	text = "Debug Console";
	action = "(finddisplay 49) createdisplay 'RscDisplayDebugPublic'";
	
	x = "SafezoneX + SafezoneW - (11 * (((safezoneW / safezoneH) min 1.2) / 40))";
	y = "21.9 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + (safezoneY + safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))";
	w = "9.975 * (((safezoneW / safezoneH) min 1.2) / 40)";
	h = "0.85 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	
	class Attributes
	{
		font = "PuristaLight";
		color = "#E5E5E5";
		align = "middle";
		shadow = "false";
		size = 0.85;
	};
};

/*class RscDisplayInterrupt
{
	class controls
	{
		class BNRG_SSPCM_buttonLoad: BNRG_SSPCM_buttonLoad_s {};
	};
};
*/

class RscDisplayDiary
{
	class controls
	{
		class BNRG_SSPCM_buttonLoad: BNRG_SSPCM_buttonLoad_s 
		{
		action = "0 call (uiNamespace getVariable 'BRG_fnc_manaulInit'); hint 'SSPCM loading...';";
		idc = 923467;
		text = "Load SSPCM"; //--- ToDo: Localize;
		x  = "17.904033 * ( ((safezoneW / safezoneH) min 1.2) / 40) + (safezoneX)";//original 1.1
		y  = "0.33333 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + (safezoneY)";
		w  = "5.1978 * (((safezoneW / safezoneH) min 1.2) / 40)";
		h  = "1 *  ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		tooltip = "Press this button to load Simple Single Player Cheat Menu"; //--- ToDo: Localize;
		};
	};
};



class RscDisplayMainMap
{
	class controls
	{
		class BNRG_SSPCM_buttonLoad: BNRG_SSPCM_buttonLoad_s 
		{
		action = "0 call (uiNamespace getVariable 'BRG_fnc_manaulInit'); hint 'SSPCM loading...';";
		idc = 923465;
		text = "Load SSPCM"; //--- ToDo: Localize;
		x  = "17.904033 * ( ((safezoneW / safezoneH) min 1.2) / 40) + (safezoneX)";//original 1.1
		y  = "0.33333 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + (safezoneY)";
		w  = "5.1978 * (((safezoneW / safezoneH) min 1.2) / 40)";
		h  = "1 *  ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		tooltip = "Press this button to load Simple Single Player Cheat Menu"; //--- ToDo: Localize;
		};
	};
};




class RscDialogCheatMenu
{
	idd = -1;
	movingenable = false;
	enablesimulation = 1;
	onLoad = "_this call BRG_fnc_CMUI_onLoad";//fill listbox with options

	class controls
	{
		class BRG_CM_UI_Back: RscBackgroundGUI
		{
			idc = 2200;

			x = 0.314375 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.103125 * safezoneW;
			h = 0.462 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class BRG_CM_UI_List: RscListBox
		{
			idc = 1500;
			onLBSelChanged = "_this call BRG_fnc_CMUI_List_onLBSelChanged";// when changed load content into BRG_CM_UI_Content_Text
			x = 0.319531 * safezoneW + safezoneX;
			y = 0.302 * safezoneH + safezoneY;
			w = 0.0928125 * safezoneW;
			h = 0.407 * safezoneH;
		};
		class IGUIBack_2200: RscBackgroundGUI
		{
			idc = 2200;
			x = 0.422656 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.262969 * safezoneW;
			h = 0.462 * safezoneH;
		};
		class BRG_CM_UI_Title: RscText
		{
			idc = 1003;
			text = "SSPCM"; //--- ToDo: Localize;
			x = 0.350469 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.0309375 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class BRG_CM_UI_SubTitle: RscText
		{
			idc = 1002;
			text = "Title goes here"; //--- ToDo: Localize;
			x = 0.427812 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.149531 * safezoneW;
			h = 0.022 * safezoneH;
		};
	};
};




class CMCtrlgroup: RscControlsGroup
{
		x = 0.427812 * safezoneW + safezoneX;
		y = 0.302 * safezoneH + safezoneY;
		w = 0.252656 * safezoneW;
		h = 0.407 * safezoneH;
};


class Rsc_CtrlGrp_BRG_BulletCam: CMCtrlgroup
{
	class Controls
	{
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Bullet Cam "; //--- ToDo: Localize;
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.0464063 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Enabled"; //--- ToDo: Localize;
			action = """bulletcamon"" call BRG_fnc_CMBulletCam;";
			x = 0.355625 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "Disabled"; //--- ToDo: Localize;
			action = """bulletcamoff"" call BRG_fnc_CMBulletCam;";
			x = 0.402031 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class RscStructuredText_1100: RscStructuredText
		{
			idc = 1100;
			text = "Press the SPACE bar at any time to interrupt the bullet camera and return to player camera.<br/><br/>Warning: During campaign, bullet camera may stutter."; //--- ToDo: Localize;
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.257813 * safezoneW;
			h = 0.11 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
	};
};

class Rsc_CtrlGrp_BRG_BulletTracing: CMCtrlgroup
{
	class Controls
	{
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Choose the amount of bullets you want traced:"; //--- ToDo: Localize;
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.180469 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Off"; //--- ToDo: Localize;
			action = "0 call BRG_fnc_CMBulletTracing;";
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.0154688 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "1"; //--- ToDo: Localize;
			action = "1 call BRG_fnc_CMBulletTracing;";
			x = 0.324687 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.0154688 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = "5"; //--- ToDo: Localize;
			action = "5 call BRG_fnc_CMBulletTracing;";
			x = 0.345312 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.0154688 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class RscButton_1603: RscButton
		{
			idc = 1603;
			text = "10"; //--- ToDo: Localize;
			action = "10 call BRG_fnc_CMBulletTracing;";
			x = 0.365937 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.0154688 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class RscButton_1604: RscButton
		{
			idc = 1604;
			text = "30"; //--- ToDo: Localize;
			action = "30 call BRG_fnc_CMBulletTracing;";
			x = 0.386562 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.0154688 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class RscButton_1605: RscButton
		{
			idc = 1605;
			text = "50"; //--- ToDo: Localize;
			action = "50 call BRG_fnc_CMBulletTracing;";
			x = 0.407187 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.0154688 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class RscButton_1606: RscButton
		{
			idc = 1606;
			text = "100"; //--- ToDo: Localize;
			action = "100 call BRG_fnc_CMBulletTracing;";
			x = 0.427812 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.0154688 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class RscStructuredText_1100: RscStructuredText
		{
			idc = 1100;
			text = "NOTE: Currently works only for player in a single instance. This is a limitation of an Arma 3 function, not SSPCM.<br/>WARNING: Tracing large amounts of bullets may cause performance issues. "; //--- ToDo: Localize;
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.324 * safezoneH + safezoneY;
			w = 0.211406 * safezoneW;
			h = 0.132 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
	};
};

class Rsc_CtrlGrp_BRG_DebugConsole: CMCtrlgroup
{
	class Controls
	{
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Debug Console"; //--- ToDo: Localize;
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.0567187 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Open"; //--- ToDo: Localize;
			action = """debug_open"" call BRG_fnc_CMDebug;";
			x = 0.365937 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.0309375 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "Enabled"; //--- ToDo: Localize;
			action = """debug_enable"" call BRG_fnc_CMDebug;";
			x = 0.402031 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.0360937 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = "Disabled"; //--- ToDo: Localize;
			action = """debug_disable"" call BRG_fnc_CMDebug;";
			x = 0.443281 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.0360937 * safezoneW;
			h = 0.022 * safezoneH;
		};
	};
};

class Rsc_CtrlGrp_BRG_Fatigue: CMCtrlgroup
{
	class Controls
	{
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Fatigue"; //--- ToDo: Localize;
			x = 0.025;
			y = 0.04;
			w = 0.075;
			h = 0.04;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "Enabled"; //--- ToDo: Localize;
			action = """fatigueon"" call BRG_fnc_CMFatigue;";
			x = 0.112499;
			y = 0.04;
			w = 0.0874999;
			h = 0.04;
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = "Disabled"; //--- ToDo: Localize;
			action = """fatigueoff"" call BRG_fnc_CMFatigue;";
			x = 0.212499;
			y = 0.04;
			w = 0.0874999;
			h = 0.04;
		};

	};
};

class Rsc_CtrlGrp_BRG_InfiniteAmmo: CMCtrlgroup
{
	class Controls
	{
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Infinite Ammo"; //--- ToDo: Localize;
			x = 0.025;
			y = 0.04;
			w = 0.1375;
			h = 0.04;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Enabled"; //--- ToDo: Localize;
			action = """InfAmmoOn"" call BRG_fnc_CMInfAmmo;";
			x = 0.175;
			y = 0.04;
			w = 0.1;
			h = 0.04;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "Disabled"; //--- ToDo: Localize;
			action = """InfAmmoOff"" call BRG_fnc_CMInfAmmo;";
			x = 0.2875;
			y = 0.04;
			w = 0.1;
			h = 0.04;
		};
		class RscStructuredText_1100: RscStructuredText
		{
			idc = 1100;
			text = "NOTICE: Currently this feature works with handguns and primary weapons only. This is due behaviour of an Arma 3 command. This might be fixed in a future mod update."; //--- ToDo: Localize;
			x = 0.025;
			y = 0.12;
			w = 0.475;
			h = 0.18;
			colorBackground[] = {0,0,0,0};
		};
	};
};

class Rsc_CtrlGrp_BRG_Invincibility: CMCtrlgroup
{
	class Controls
	{
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Infinite Ammo"; //--- ToDo: Localize;
			x = 0.025;
			y = 0.04;
			w = 0.1375;
			h = 0.04;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Enabled"; //--- ToDo: Localize;
			action = """InvincibilityOn"" call BRG_fnc_CMInvincible;";
			x = 0.175;
			y = 0.04;
			w = 0.1;
			h = 0.04;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "Disabled"; //--- ToDo: Localize;
			action = """InvincibilityOff"" call BRG_fnc_CMInvincible;";
			x = 0.2875;
			y = 0.04;
			w = 0.1;
			h = 0.04;
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			text = "Current vehicle"; //--- ToDo: Localize;
			x = 0.025;
			y = 0.1;
			w = 0.1375;
			h = 0.04;
		};
		class RscText_1002: RscText
		{
			idc = 1002;
			text = "Group Members"; //--- ToDo: Localize;
			x = 0.025;
			y = 0.16;
			w = 0.1375;
			h = 0.04;
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = "Enabled"; //--- ToDo: Localize;
			action = """InvincibilityVehOn"" call BRG_fnc_CMInvincible;";
			x = 0.175;
			y = 0.1;
			w = 0.1;
			h = 0.04;
		};
		class RscButton_1603: RscButton
		{
			idc = 1603;
			text = "Enabled"; //--- ToDo: Localize;
			action = """GroupInvincibilityOn"" call BRG_fnc_CMInvincible;";
			x = 0.175;
			y = 0.16;
			w = 0.1;
			h = 0.04;
		};
		class RscButton_1604: RscButton
		{
			idc = 1604;
			text = "Disabled"; //--- ToDo: Localize;
			action = """InvincibilityVehOff"" call BRG_fnc_CMInvincible;";
			x = 0.2875;
			y = 0.1;
			w = 0.1;
			h = 0.04;
		};
		class RscButton_1605: RscButton
		{
			idc = 1605;
			text = "Disabled"; //--- ToDo: Localize;
			action = """GroupInvincibilityOff"" call BRG_fnc_CMInvincible;";
			x = 0.2875;
			y = 0.16;
			w = 0.1;
			h = 0.04;
		};
	};
};

class Rsc_CtrlGrp_BRG_SideRelatations: CMCtrlgroup
{
	class Controls
	{
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Friendly to everybody"; //--- ToDo: Localize;
			x = 0.025;
			y = 0.04;
			w = 0.1875;
			h = 0.04;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Enabled"; //--- ToDo: Localize;
			action = """sr_ignore_enable"" call BRG_fnc_CMSideRelations;";
			x = 0.225;
			y = 0.04;
			w = 0.1;
			h = 0.04;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "Disabled"; //--- ToDo: Localize;
			action = """sr_ignore_disable"" call BRG_fnc_CMSideRelations;";
			x = 0.3375;
			y = 0.04;
			w = 0.1;
			h = 0.04;
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			text = "Friendly to allies"; //--- ToDo: Localize;
			x = 0.025;
			y = 0.1;
			w = 0.15;
			h = 0.04;
		};
		class RscText_1002: RscText
		{
			idc = 1002;
			text = "Hostile to everybody"; //--- ToDo: Localize;
			x = 0.025;
			y = 0.16;
			w = 0.1875;
			h = 0.04;
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = "Activate"; //--- ToDo: Localize;
			action = """sr_allies_friendly"" call BRG_fnc_CMSideRelations;";
			x = 0.1875;
			y = 0.1;
			w = 0.1;
			h = 0.04;
		};
		class RscButton_1603: RscButton
		{
			idc = 1603;
			text = "Activate"; //--- ToDo: Localize;
			action = """sr_all_hostile"" call BRG_fnc_CMSideRelations;";
			x = 0.225;
			y = 0.16;
			w = 0.1;
			h = 0.04;
		};
	};
};

class Rsc_CtrlGrp_BRG_SpawnInJet: CMCtrlgroup
{
	class Controls
	{
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Spawn in a flying Jet. Choose a jet:"; //--- ToDo: Localize;
			x = 0.025;
			y = 0.04;
			w = 0.3125;
			h = 0.04;
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			text = "Starting Altitude:"; //--- ToDo: Localize;
			x = 0.025;
			y = 0.34;
			w = 0.15;
			h = 0.04;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "A-164 Wipeout"; //--- ToDo: Localize;
			action = """wipeout"" call BRG_fnc_CMFlyingJet;";
			x = 0.025;
			y = 0.1;
			w = 0.175;
			h = 0.04;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "To-199 Neophron"; //--- ToDo: Localize;
			action = """neophron"" call BRG_fnc_CMFlyingJet;";
			x = 0.025;
			y = 0.16;
			w = 0.175;
			h = 0.04;
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = "A-143 Buzzard CAS"; //--- ToDo: Localize;
			action = """buzzardcas"" call BRG_fnc_CMFlyingJet;";
			x = 0.025;
			y = 0.22;
			w = 0.175;
			h = 0.04;
		};
		class RscButton_1603: RscButton
		{
			idc = 1603;
			text = "A-143 Buzzard AA"; //--- ToDo: Localize;
			action = """buzzardaa"" call BRG_fnc_CMFlyingJet;";
			x = 0.025;
			y = 0.28;
			w = 0.175;
			h = 0.04;
		};
		class RscButton_1604: RscButton
		{
			idc = 1604;
			text = "100m"; //--- ToDo: Localize;
			x = 0.025;
			y = 0.4;
			w = 0.175;
			h = 0.04;
		};
		class RscButton_1605: RscButton
		{
			idc = 1605;
			text = "300m"; //--- ToDo: Localize;
			action = "300 call BRG_fnc_CMFlyingJet;";
			x = 0.025;
			y = 0.46;
			w = 0.175;
			h = 0.04;
		};
		class RscButton_1606: RscButton
		{
			idc = 1606;
			text = "500m"; //--- ToDo: Localize;
			action = "500 call BRG_fnc_CMFlyingJet;";
			x = 0.025;
			y = 0.52;
			w = 0.175;
			h = 0.04;
		};
		class RscButton_1607: RscButton
		{
			idc = 1607;
			text = "1000m"; //--- ToDo: Localize;
			action = "1000 call BRG_fnc_CMFlyingJet;";
			x = 0.025;
			y = 0.58;
			w = 0.175;
			h = 0.04;
		};
		class RscButton_1608: RscButton
		{
			idc = 1608;
			text = "2000m"; //--- ToDo: Localize;
			action = "2000 call BRG_fnc_CMFlyingJet;";
			x = 0.025;
			y = 0.64;
			w = 0.175;
			h = 0.04;
		};
	};
};

class Rsc_CtrlGrp_BRG_Teleport: CMCtrlgroup
{
	class Controls
	{
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Map teleport"; //--- ToDo: Localize;
			x = 0.025;
			y = 0.04;
			w = 0.125;
			h = 0.04;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Enabled"; //--- ToDo: Localize;
			action = """teleport_map_enable"" call BRG_fnc_CMTeleport;";
			x = 0.1625;
			y = 0.04;
			w = 0.1;
			h = 0.04;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "Disabled"; //--- ToDo: Localize;
			action = """teleport_map_disable"" call BRG_fnc_CMTeleport;";
			x = 0.275;
			y = 0.04;
			w = 0.1;
			h = 0.04;
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			text = "3D teleport"; //--- ToDo: Localize;
			x = 0.025;
			y = 0.1;
			w = 0.125;
			h = 0.04;
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = "Enabled"; //--- ToDo: Localize;
			action = """teleport_3d_enable"" call BRG_fnc_CMTeleport;";
			x = 0.1625;
			y = 0.1;
			w = 0.1;
			h = 0.04;
		};
		class RscButton_1603: RscButton
		{
			idc = 1603;
			text = "Disabled"; //--- ToDo: Localize;
			action = """teleport_3d_disable"" call BRG_fnc_CMTeleport;";
			x = 0.275;
			y = 0.1;
			w = 0.1;
			h = 0.04;
		};
		class RscText_1002: RscText
		{
			idc = 1002;
			text = "Teleport Vehicle"; //--- ToDo: Localize;
			x = 0.025;
			y = 0.2;
			w = 0.15;
			h = 0.04;
		};
		class RscButton_1604: RscButton
		{
			idc = 1604;
			text = "Enabled"; //--- ToDo: Localize;
			action = """teleport_veh_enable"" call BRG_fnc_CMTeleport;";
			x = 0.2;
			y = 0.2;
			w = 0.1;
			h = 0.04;
		};
		class RscButton_1605: RscButton
		{
			idc = 1605;
			text = "Disabled"; //--- ToDo: Localize;
			action = """teleport_veh_disable"" call BRG_fnc_CMTeleport;";
			x = 0.3125;
			y = 0.2;
			w = 0.1;
			h = 0.04;
		};
	};
};

class Rsc_CtrlGrp_BRG_VirtualArsenal: CMCtrlgroup
{
	class Controls
	{
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Virtual Arsenal"; //--- ToDo: Localize;
			x = 0.025;
			y = 0.04;
			w = 0.1375;
			h = 0.04;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Open"; //--- ToDo: Localize;
			action = """varsenal_open"" call BRG_fnc_CMVArsenal;";
			x = 0.175;
			y = 0.04;
			w = 0.1;
			h = 0.04;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "Enabled"; //--- ToDo: Localize;
			action = """varsenal_enable"" call BRG_fnc_CMVArsenal;";
			x = 0.2875;
			y = 0.04;
			w = 0.1;
			h = 0.04;
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = "Disabled"; //--- ToDo: Localize;
			action = """varsenal_disable"" call BRG_fnc_CMVArsenal;";
			x = 0.4;
			y = 0.04;
			w = 0.1;
			h = 0.04;
		};
	};
};

class Rsc_CtrlGrp_BRG_VirtualGarage: CMCtrlgroup
{
	class Controls
	{
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Virtual Garage"; //--- ToDo: Localize;
			x = 0.025;
			y = 0.04;
			w = 0.1375;
			h = 0.04;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Open"; //--- ToDo: Localize;
			action = """vgarage_open"" call BRG_fnc_CMVGarage;";
			x = 0.175;
			y = 0.04;
			w = 0.1;
			h = 0.04;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "Enabled"; //--- ToDo: Localize;
			action = """vgarage_Enable"" call BRG_fnc_CMVGarage;";
			x = 0.2875;
			y = 0.04;
			w = 0.1;
			h = 0.04;
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = "Disabled"; //--- ToDo: Localize;
			action = """vgarage_Disable"" call BRG_fnc_CMVGarage;";
			x = 0.4;
			y = 0.04;
			w = 0.1;
			h = 0.04;
		};
	};
};

class Rsc_CtrlGrp_BRG_Zeus: CMCtrlgroup
{
	class Controls
	{


		class RscText_1000: RscText
		{
			idc = 1000;
			action = "";
			text = "Zeus Editor"; //--- ToDo: Localize;
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.0464063 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			text = "All objects editable"; //--- ToDo: Localize;
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.0721875 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Enabled"; //--- ToDo: Localize;
			action = """zeus_enable"" call BRG_fnc_CMZeus;";
			x = 0.355625 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "Disabled"; //--- ToDo: Localize;
			action = """zeus_disable"" call BRG_fnc_CMZeus;";
			x = 0.402031 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = "Add"; //--- ToDo: Localize;
			action = """zeus_add"" call BRG_fnc_CMZeus;";
			x = 0.381406 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class RscButton_1603: RscButton
		{
			idc = 1603;
			text = "Remove"; //--- ToDo: Localize;
			action = """zeus_remove"" call BRG_fnc_CMZeus;";
			x = 0.427812 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class RscButton_1604: RscButton
		{
			idc = 1604;
			text = "How to use Zeus"; //--- ToDo: Localize;
			action = """howto"" call BRG_fnc_CMZeus;";
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.0670312 * safezoneW;
			h = 0.022 * safezoneH;
		};

	};
};



