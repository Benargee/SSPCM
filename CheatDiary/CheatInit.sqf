//Script Created By Benargee, 2015. http://wiki.benargee.com http://www.benargee.com http://steamcommunity.com/id/Benargee/

//Check if cheat menu enabled. Supports ability for player to switch units.
BRG_MenuLoop = true;

0 Spawn {
	while {BRG_MenuLoop} do    
		{
			if (!(player diarySubjectExists "BRG_CheatMenu")) then {[] spawn BRG_fnc_cheatMenu;
			
			//if ((!BRG_MPNotified) and (isMultiplayer) and (!serverCommandAvailable "#logout")) then {[] spawn BRG_fnc_MPCheatNotif};//only on multiplayer and if player isnt an admin
			
			};   
			sleep 4;
	};
};