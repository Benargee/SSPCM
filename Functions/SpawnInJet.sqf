//Script Created By Benargee, 2015. http://wiki.benargee.com http://www.benargee.com http://steamcommunity.com/id/Benargee/
//Spawn in flying jet of choice, works on default jets only for now.
//[altitude,class] call BRG_fnc_spawnInJet;


//player action ["Eject",vehicle player]; sleep
// !((typeof (vehicle player) ) isKindOf "man");


_altitude = _this select 0;
_class = _this select 1;


_playerpos = (getpos player);  
_playerposAlt = [(getpos player) select 0, (getpos player) select 1, _altitude] ;
_plane = createVehicle [_class, _playerpos, [], 0, "FLY"]; 
_plane setpos _playerposAlt; 
[_plane, getdir player] call KK_fnc_setDirFLY; 

_plane spawn {
_plane = _this;
if (!((typeof (vehicle player) ) isKindOf "man")) then {
player action ["Eject",vehicle player];
WaitUntil {((typeof (vehicle player) ) isKindOf "man")};

player moveInDriver _plane; 
} else {player moveInDriver _plane;};



};

BRNG_plane = _plane; //debug

openMap false;

_plane;