//Script Created By Benargee, 2015. http://wiki.benargee.com http://www.benargee.com http://steamcommunity.com/id/Benargee/
//[100000,player] call BRNG_fnc_setRating

_setRating = _this select 0;//number
_unit = _this select 1;//object
_getRating = rating _unit;
_addVal = _setRating - _getRating;
_unit addRating _addVal;

_getRating; //return old rating