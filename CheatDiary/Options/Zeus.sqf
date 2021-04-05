if (isNil "BRG_Zeus_init") then {
	BRG_Zeus_init = true;
	
	BRG_ZeusStatus = false;
	BRG_ZeusOn = {
		if (!BRG_ZeusStatus or !(getAssignedCuratorunit CheatCurator == player)) then {
			BRG_ZeusStatus = true; 
			unassignCurator CheatCurator; 
			player assignCurator CheatCurator; 
			CheatCurator addCuratorEditableObjects [[player],true];
			PUB_PN = name player;publicVariable "PUB_PN";format ["%1 enabled zeus", PUB_PN] remoteExec ["systemChat"];
		};
		hint ('Zeus ENABLED\n Press the ' + (actionKeysNames "curatorInterface") + " key to open interface");
	};

	BRG_ZeusOff = {
		BRG_ZeusStatus = false; 
		unassignCurator CheatCurator; 
		objnull assignCurator CheatCurator; 
		CheatCurator removeCuratorEditableObjects [[player],false]; 
		hint 'Zeus DISABLED';
	};

	BRG_ZeusAllStatus = false;
	BRG_ZeusAddAll = {
		if (!BRG_ZeusAllStatus) then {
			BRG_ZeusAllStatus = true; 
			CheatCurator addCuratorEditableObjects [allMissionObjects "all",true ];
		};
		hint 'All objects ADDED to Zeus editor';
	};

	BRG_ZeusRemoveAll = {
		BRG_ZeusAllStatus = false;
		CheatCurator removeCuratorEditableObjects [allMissionObjects "all",false]; 
		CheatCurator addCuratorEditableObjects [[player],true]; 
		hint 'All objects REMOVED from Zeus editor';
	};

	BRG_ZeusHowTo = {
		["curator", "curator"] call BIS_fnc_openFieldManual;
	};
};

switch (_this) do {
	case "diary":{
		player createDiaryRecord ["BRG_CheatMenu", ["Zeus", 
			"Zeus Editor <font color='#33CC33'><execute expression = '[] call BRG_ZeusOn'>Enabled</execute></font color> <font color='#CC0000'><execute expression = '[] call BRG_ZeusOff'>Disabled</execute></font color>
			<br/>
			<br/>All objects editable <font color='#33CC33'><execute expression = '[] call BRG_ZeusAddAll'>Add</execute></font color> <font color='#CC0000'><execute expression = '[] call BRG_ZeusRemoveAll'>Remove</execute></font color>
			<br/>
			<br/><font color='#3399FF'><execute expression = '[] call BRG_ZeusHowTo'>How to use Zeus</execute></font color>"]];
	};
	case "zeus_enable":{[] call BRG_ZeusOn};
	case "zeus_disable":{[] call BRG_ZeusOff};
	case "zeus_add":{[] call BRG_ZeusAddAll};
	case "zeus_remove":{[] call BRG_ZeusRemoveAll};
	case "howto":{[] call BRG_ZeusHowTo};
};
