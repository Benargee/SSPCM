if (isNil "BRG_Debug_init") then {
	BRG_Debug_init = true;

	BRG_debStatus = false;//prevents multiple action menu entries
	BRG_DebugOpenInMap = {
		(finddisplay 12) createdisplay 'RscDisplayDebugPublic';
		PUB_PN = name player;publicVariable "PUB_PN";format ["%1 uses Console", PUB_PN] remoteExec ["systemChat"];
	};

	BRG_DebugOn = {
		if (!BRG_debStatus) then {
			BRG_debStatus = true; 
			BRG_DebugactID = player addAction ["Debug Console", "(finddisplay 46) createdisplay 'RscDisplayDebugPublic';"];
		};
		hint 'Debug Console action menu ENABLED';
	};

	BRG_DebugOff = {
		BRG_debStatus = false; 
		player removeAction BRG_DebugactID;
		hint 'Debug Console action menu DISABLED';
	};
};

switch (_this) do {
	case "diary":{
		player createDiaryRecord ["BRG_CheatMenu", ["Debug Console", "Debug Console <font color='#33CC33'><execute expression = '[] call BRG_DebugOpenInMap'>Open</execute></font color> <font color='#33CC33'><execute expression = '[] call BRG_DebugOn'>Enabled</execute></font color> <font color='#CC0000'><execute expression = '[] call BRG_DebugOff'>Disabled</execute></font color>"]];
	};
	case "debug_open":{[] call BRG_DebugOpenInMap};
	case "debug_enable":{[] call BRG_DebugOn};
	case "debug_disable":{[] call BRG_DebugOff};
};