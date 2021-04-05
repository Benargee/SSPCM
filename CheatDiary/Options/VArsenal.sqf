if (isNil "BRG_VArsenal_init") then {
	BRG_VArsenal_init = true;

	BRG_VAStatus = false;//prevents multiple action menu entries
	BRG_VAOpen = {
		["Open",true] spawn BIS_fnc_arsenal;
		PUB_PN = name player;publicVariable "PUB_PN";format ["%1 uses PA!", PUB_PN] remoteExec ["systemChat"];
	};

	BRG_VAOn = {
		if (!BRG_VAStatus) then {
			BRG_VAStatus = true; 
			BRG_VAactID = player addAction ["Virtual Arsenal", "[] call BRG_VAOpen;"];
		};
		hint 'Virtual Arsenal action menu ENABLED';
	};

	BRG_VAOff = {
		BRG_VAStatus = false; 
		player removeAction BRG_VAactID;
		hint 'Virtual Arsenal action menu DISABLED';
	};
};

switch (_this) do {
	case "diary":{
		player createDiaryRecord ["BRG_CheatMenu", ["Virtual Arsenal", "Virtual Arsenal <font color='#33CC33'><execute expression = '[] call BRG_VAOpen'>Open</execute></font color> <font color='#33CC33'><execute expression = '[] call BRG_VAOn'>Enabled</execute></font color> <font color='#CC0000'><execute expression = '[] call BRG_VAOff'>Disabled</execute></font color>"]];
	};
	case "varsenal_open":{[] call BRG_VAOpen};
	case "varsenal_enable":{[] call BRG_VAOn};
	case "varsenal_disable":{[] call BRG_VAOff};
};