//Bullet cam original work by Killzone Kid http://killzonekid.com/arma-scripting-tutorials-a-simple-bullet-cam/
//Script Edited By Benargee, 2015. http://wiki.benargee.com http://www.benargee.com http://steamcommunity.com/id/Benargee/

//Todo:add cam cancel (space)

//(findDisplay 46) displayAddEventHandler ["KeyDown","hint str (_this select 1);false;"];
if (isnil "BRNG_BulletCamDeEh") then {
BRNG_BulletCamDeEh = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) == 57) then {BRNG_CamStatus = false;};false;"];
};
BRNG_CamStatus = true;

_EHIndex = player addEventHandler ["Fired", {
    _null = _this spawn {
		BRNG_CamStatus = true;
        _missile = _this select 6;
        _cam = "camera" camCreate (position player); 
        _cam cameraEffect ["External", "Back"];
        waitUntil {
            if ((isNull _missile) or !BRNG_CamStatus) exitWith {true};//(speed _missile < 1) dont wait on stuff like smoke grenades
            _cam camSetTarget _missile;
            _cam camSetRelPos [0,-3,0];
            _cam camCommit 0;
        };
        uiSleep 0.4;      //Slo-mo 
        _cam cameraEffect ["Terminate", "Back"];
        camDestroy _cam;
    };
}];

_EHIndex;