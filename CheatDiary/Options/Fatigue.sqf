if (isNil "BRG_Fatigue_init") then {
	BRG_Fatigue_init = true;

	BRG_FatigueOn = {
		player enableFatigue true;
		hint 'Player fatigue ENABLED';
		PUB_PN = name player;publicVariable "PUB_PN";format ["%1 reenabled stamina", PUB_PN] remoteExec ["systemChat"];
	};

	BRG_FatigueOff = {
		player enableFatigue false;
		hint 'Player fatigue DISABLED';
		PUB_PN = name player;publicVariable "PUB_PN";format ["%1 disabled stamina", PUB_PN] remoteExec ["systemChat"];
	};
};

switch (_this) do {
	case "diary":{
		player createDiaryRecord ["BRG_CheatMenu", ["Fatigue", "Fatigue <font color='#CC0000'><execute expression = '[] call BRG_FatigueOn'>Enabled</execute></font color> <font color='#33CC33'><execute expression = '[] call BRG_FatigueOff'>Disabled</execute></font color>"]];
	};
	case "fatigueon":{[] call BRG_FatigueOn};
	case "fatigueoff":{[] call BRG_FatigueOff};
};