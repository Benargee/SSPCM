//

//Load all UI namespace functions to mission namespace

systemChat "SSPCM Loading functions";

if (isNil "KK_fnc_setDirFLY") then {KK_fnc_setDirFLY = (uiNamespace getVariable "KK_fnc_setDirFLY")};


_functionConfigArray = ("true" configClasses (configFile >> "CfgFunctions" >> "BRG" >> "SSPCM"));
{
	_functionClass = configName _x;
	call compile format["if (isNil 'BRG_fnc_%1') then {BRG_fnc_%1 = (uiNamespace getVariable 'BRG_fnc_%1')};",_functionClass];
} forEach _functionConfigArray;




if (isNil "CheatCurator") then 
	{
	systemChat "SSPCM Loading Zeus";
	0 call BRG_fnc_preInit;
	
	};

systemChat "SSPCM Loading Menu";
BRG_MenuLoop = false;

if (("a3_ui_f_contact" in activatedAddons) or (missionName == "Oldman" && worldName == "tanoa")) then 
{
	//loads new menu
	0 spawn BRG_fnc_CMUIInit;
} else {
	//loads legacy menu
	0 spawn {
		sleep 1;
		BRG_ManInit = 0 spawn BRG_fnc_CheatInit;
		waitUntil {scriptDone BRG_ManInit};
		hint "SSPCM Loading Done";
		if ((!BRG_MPNotified) and (isMultiplayer) and !((serverCommandAvailable "#logout") or (isserver))) then {[] spawn BRG_fnc_MPCheatNotif};//only on multiplayer and if player isnt an admin
		
	};
};