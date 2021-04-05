//Script Created By Benargee, 2015. http://wiki.benargee.com http://www.benargee.com http://steamcommunity.com/id/Benargee/
//TODO: Change all BRG to BNRG.
//--------//Bottom of list//--------//

sleep 1;//test

player createDiarySubject ["BRG_CheatMenu","Cheats!"];

//Info
	"diary" call BRG_fnc_CMInfo;
//separator
	player createDiaryRecord ["BRG_CheatMenu", ["==========","Move along, nothing to see here."]];
//Zeus
	"diary" call BRG_fnc_CMZeus;
//Virtual Garage
	"diary" call BRG_fnc_CMVGarage;
//Virtual Arsenal
	"diary" call BRG_fnc_CMVArsenal;
//Teleport
	"diary" call BRG_fnc_CMTeleport;
//Spawn in Flying Jet
	"diary" call BRG_fnc_CMFlyingJet;
//Side relations
	"diary" call BRG_fnc_CMSideRelations;
//Invincibility
	"diary" call BRG_fnc_CMInvincible;
//Infinite Ammo
	"diary" call BRG_fnc_CMInfAmmo;
//Fatigue
	"diary" call BRG_fnc_CMFatigue;	
//Debug Console
	"diary" call BRG_fnc_CMDebug;
//Bullet Tracing 
	"diary" call BRG_fnc_CMBulletTracing;	
//Bullet Cam
	"diary" call BRG_fnc_CMBulletCam;

//--------//Top of list//--------//



