if (isNil "BRG_TraceBullets_init") then {
	BRG_TraceBullets_init = true;

	BRG_TraceBullets = {
		[player, 0] spawn BIS_fnc_traceBullets; 
		[player, _this] spawn BIS_fnc_traceBullets; 
		hint format ['Tracing the last %1 bullets at a time',_this];
		PUB_PN = name player;publicVariable "PUB_PN";format ["%1 uses BulletTracing", PUB_PN] remoteExec ["systemChat"];
	};
};

switch (_this) do {
	case "diary":{
		player createDiaryRecord ["BRG_CheatMenu", ["Bullet Tracing", "
			Choose the amount of bullets you want traced: <br/>
			<font color='#CC0000'><execute expression = '0 spawn BRG_TraceBullets'>Off</execute></font color>
			<font color='#33CC33'><execute expression = '1 spawn BRG_TraceBullets'>1</execute></font color>
			<font color='#33CC33'><execute expression = '5 spawn BRG_TraceBullets'>5</execute></font color>
			<font color='#33CC33'><execute expression = '10 spawn BRG_TraceBullets'>10</execute></font color>
			<font color='#33CC33'><execute expression = '30 spawn BRG_TraceBullets'>30</execute></font color>
			<font color='#33CC33'><execute expression = '50 spawn BRG_TraceBullets'>50</execute></font color>
			<font color='#33CC33'><execute expression = '100 spawn BRG_TraceBullets'>100</execute></font color><br/><br/>
			NOTE: Currently works only for player in a single instance. This is a limitation of an Arma 3 function, not SSPCM.<br/>
			WARNING: Tracing large amounts of bullets may cause performance issues. 
			"]];
	};
	default {
		if (typeName _this == "SCALAR") then {
			_this spawn BRG_TraceBullets;
		};
	};
};



	