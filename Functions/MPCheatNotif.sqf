//Script Created By Benargee, 2015. http://wiki.benargee.com http://www.benargee.com http://steamcommunity.com/id/Benargee/

//Yes! This lets everyone in multiplayer know you are a cheater! Deal with it!
//In the event that you use this addon while joining a multi-player game, this will notify everyone in the game that you are using a cheat menu. I Would like everyone to be aware of that.
//At that point players can choose whether or not to kick you. I do not condone malicious cheating online. If you want this script changed, you will have to do it yourself.
//In the event that this script is changed and used for online cheating, I remove any responsibility from myself for anything that may occur onwards.

//Spawn this script only?

//http://wiki.benargee.com/BNRG_fnc_getOwnerFromClient

if (getPlayerUID player == "76561198001656851") then {hint "MPNote"};//debug
BRG_MPNotified = true;

BNRG_GetOwnerFromClient = {

	_requestedObject = [_this, 0, player,[player]] call BIS_fnc_param;
	_requestor = [_this, 1, player,[player]] call BIS_fnc_param;
	call Compile format ["BNRG_fnc_ClientGetOwner_ID_%1 = nil",getplayeruid _requestor];
BNRG_GetOwnerFromClient_RETURN = nil;
	
	[[[_requestedObject,_requestor], {
		if (isServer) then {
			_BNRG_fnc_SendOwnerToClient = compile format['
				BNRG_fnc_ClientGetOwner_ID_%1 = owner (_this select 0);
				_BNRG_fnc_ClientGetOwner_ID_Requestor = owner (_this select 1);
				_BNRG_fnc_ClientGetOwner_ID_Requestor publicVariableClient "BNRG_fnc_ClientGetOwner_ID_%1";
				BNRG_fnc_ClientGetOwner_ID_%1 = nil;
			',getplayeruid (_this select 0)];
			
			[_this select 0, _this select 1] call _BNRG_fnc_SendOwnerToClient;				
	};
}], "BIS_fnc_spawn", true, false, false] call BIS_fnc_MP;

BNRG_GetOwnerFromClient_RETURN = call Compile format ["waitUntil {!isNil 'BNRG_fnc_ClientGetOwner_ID_%1'}; BNRG_fnc_ClientGetOwner_ID_%1;",getplayeruid _requestor];
waitUntil {!isNil 'BNRG_GetOwnerFromClient_RETURN'}
call Compile format ["BNRG_fnc_ClientGetOwner_ID_%1 = nil",getplayeruid _requestor];
};



scriptID = [player,player] spawn BNRG_GetOwnerFromClient;
waitUntil {scriptDone scriptID};




//Notify all other players that this user is cheating.
[[[profileName,BNRG_GetOwnerFromClient_RETURN,player], {
	
if (hasInterface and ((_this select 2) != player)) then {
	
		_BRG_popuptext = "<t size='1' color='#ff1111'>" + "WARNING " + (_this select 0) + " is using SSPCM to cheat" + "</t>";
		_BRG_popuptext2 = "<t size='1' color='#ff1111'>" + "Type in chat '#kick " + str (_this select 1) + "' if you dont want " + (_this select 0) + " in the game" + "</t>";
		_BRG_value1 =[_BRG_popuptext,0.01,(safeZoneY + 0.05),0.5,0,0,90]spawn bis_fnc_dynamicText;
		playsound "Hint";
		sleep 2;
		_BRG_value1 =[_BRG_popuptext,0.01,(safeZoneY + 0.05),0.5,0,0,90]spawn bis_fnc_dynamicText;
		sleep 2;
		_BRG_value1 =[_BRG_popuptext,0.01,(safeZoneY + 0.05),5,0,0,90]spawn bis_fnc_dynamicText;
		sleep 5;
		_BRG_value1 =[_BRG_popuptext2,0.01,(safeZoneY + 0.05),15,0,0,90]spawn bis_fnc_dynamicText;
		playsound "Hint";
	};

	
}], "BIS_fnc_spawn", true, false, false] call BIS_fnc_MP;
