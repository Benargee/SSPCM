#include "BIS_AddonInfo.hpp"
class CfgPatches 
{
	class SSPCM 
	{
		units[] = {};
		weapons[] = {};
		requiredAddons[] = {"A3_Data_F"};
		requiredVersion = 0.1;
		//CBA Credits start
		author[]= {"benargee", "Xelantro"}; 	
		authorUrl = "http://wiki.benargee.com/Simple_Single_Player_Cheat_Menu";
		version = "1.1.7";
		versionAr[] = {1,1,7};
		versionStr = "1.1.7";
		mail = "benargeez@gmail.com";
		fileName = "SSPCM.pbo";
		//CBA Credits end
	};
};


class CfgFunctions
{
	class BRG
	{
		class SSPCM 
		{
			class preInit
			{
				file = "\SSPCM\preinit.sqf";
				preInit = 1;
			};
			
			class postInit
			{
				file = "\SSPCM\postinit.sqf";
				postInit = 1;
			};
			
			class manaulInit
			{
				file = "\SSPCM\manualInit.sqf";
			};
			//General functions START
			class cheatMenu
			{
				file = "\SSPCM\CheatDiary\CheatMenu.sqf";
			};
			
			class cheatInit
			{
				file = "\SSPCM\CheatDiary\CheatInit.sqf";
			};
			
			class MPCheatNotif
			{
				file = "\SSPCM\Functions\MPCheatNotif.sqf";
			};
			
			class BulletCamBasic
			{
				file = "\SSPCM\Functions\BulletCamBasic.sqf"; 
			};
			
			class spawnInJet
			{
				file = "\SSPCM\Functions\spawnInJet.sqf"; 
			};
			
			class setRating
			{
				file = "\SSPCM\Functions\setRating.sqf"; 
			};
			//General functions END
			//Cheat menu options START
			class CMInfo
			{
				file = "\SSPCM\CheatDiary\Options\Info.sqf"; 
			};
			
			class CMZeus
			{
				file = "\SSPCM\CheatDiary\Options\Zeus.sqf"; 
			};
			
			class CMVArsenal
			{
				file = "\SSPCM\CheatDiary\Options\VArsenal.sqf"; 
			};
			
			class CMVGarage
			{
				file = "\SSPCM\CheatDiary\Options\VGarage.sqf"; 
			};
			
			class CMTeleport
			{
				file = "\SSPCM\CheatDiary\Options\Teleport.sqf"; 
			};
			
			class CMFlyingJet
			{
				file = "\SSPCM\CheatDiary\Options\FlyingJet.sqf"; 
			};
			
			class CMSideRelations
			{
				file = "\SSPCM\CheatDiary\Options\SideRelations.sqf"; 
			};
			
			class CMInvincible
			{
				file = "\SSPCM\CheatDiary\Options\Invincible.sqf"; 
			};
			
			class CMInfAmmo
			{
				file = "\SSPCM\CheatDiary\Options\InfAmmo.sqf"; 
			};
			
			class CMFatigue
			{
				file = "\SSPCM\CheatDiary\Options\Fatigue.sqf"; 
			};
			
			class CMDebug
			{
				file = "\SSPCM\CheatDiary\Options\Debug.sqf"; 
			};
			
			class CMBulletTracing
			{
				file = "\SSPCM\CheatDiary\Options\BulletTracing.sqf"; 
			};
			
			class CMBulletCam
			{
				file = "\SSPCM\CheatDiary\Options\BulletCam.sqf"; 
			};
			//Cheat menu options END

			class CMUIInit
			{
				file = "\SSPCM\CheatUI\CheatUIInit.sqf";
			};

			class CMUI_onLoad
			{
				file = "\SSPCM\UI\Script\CheatUI_onLoad.sqf";
			};

			class CMUI_List_onLBSelChanged
			{
				file = "\SSPCM\UI\Script\CheatUI_List_onLBSelChanged.sqf";
			};
		};
	};
	
	
	class KK //http://killzonekid.com/
	{
		class SSPCM 
		{
			class setDirFLY
			{
				file = "\SSPCM\Functions\setDirFLY.sqf";
			};
			
		};
	};
};


enableDebugConsole = 2;//test!!