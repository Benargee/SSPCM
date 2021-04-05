if (isNil "BRG_BulletCam_init") then {
	BRG_BulletCam_init = true;

	BRG_BulletCamStatus = false;//prevents multiple eventhandler entries

	BRG_BulletCamOn = {
		if (!BRG_BulletCamStatus) then {
			BRG_BulletCamStatus = true; 
			BRG_BulletCamID = call BRG_fnc_BulletCamBasic;
		};
		hint 'Bullet cam ENABLED';
		PUB_PN = name player;publicVariable "PUB_PN";format ["%1 uses BulletCam", PUB_PN] remoteExec ["systemChat"];
	};

	BRG_BulletCamOff = {
		BRG_BulletCamStatus = false; 
		player removeEventHandler ["fired", BRG_BulletCamID];
		hint 'Bullet cam DISABLED';
	};
};

switch (_this) do {
	case "diary":{
		player createDiaryRecord ["BRG_CheatMenu", ["Bullet Cam", "Bullet Cam <font color='#33CC33'><execute expression = '[] call BRG_BulletCamOn'>Enabled</execute></font color> <font color='#CC0000'><execute expression = '[] call BRG_BulletCamOff'>Disabled</execute></font color><br/><br/>

		Press the SPACE bar at any time to interrupt the bullet camera and return to player camera.<br/><br/>

		Warning: During campaign, bullet camera may stutter.
		"]];
	};
	case "bulletcamon":{[] call BRG_BulletCamOn};
	case "bulletcamoff":{[] call BRG_BulletCamOff};
};
