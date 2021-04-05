//Script Created By Benargee, 2015. http://wiki.benargee.com http://www.benargee.com http://steamcommunity.com/id/Benargee/

//CheatCurator addCuratorEditableObjects [[player],true];
[CheatCurator,[-2,-1,0,1]] spawn BIS_fnc_setCuratorVisionModes;
BRG_MPNotified = false;


//Cheat Menu
/*//temp disable auto load, manual init only
if (!isMultiplayer) then {//mp

	[] spawn {
		waitUntil {!isNull player};
		[] spawn BRG_fnc_CheatInit;
	};

} ;//mp
/*


