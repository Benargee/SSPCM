
if (isNil "BRG_Teleport_init") then {
	BRG_Teleport_init = true;

	BRG_TPStatus = false;
	BRG_fnc_TelePort = {
		if (!_shift and _alt) then {(call compile BRG_TPObj) setpos _pos};
		PUB_PN = name player;publicVariable "PUB_PN";format ["%1 teleported", PUB_PN] remoteExec ["systemChat"];
	};

	BRG_TPOn = {
		if (!BRG_TPStatus) then {
			BRG_TPStatus = true; 
			["BRG_TP", "onMapSingleClick", BRG_fnc_TelePort, 0] call BIS_fnc_addStackedEventHandler;
		};
		hint 'Map teleport ENABLED\nClick anywhere on the map while pressing the Alt key to teleport to that location';
	};
	
	BRG_TPOff = {
		BRG_TPStatus = false; 
		["BRG_TP", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;hint 'Map teleport DISABLED';
	};
	
	////target
	BRG_TPTargetStatus = false;//prevents multiple action menu entries
	
	BRG_TPTargetGO = {
		(call compile BRG_TPObj) setpos (screenToWorld [0.5, 0.5]);
		PUB_PN = name player;publicVariable "PUB_PN";format ["%1 teleported", PUB_PN] remoteExec ["systemChat"];
	};

	BRG_TPTargetOn = {
		if (!BRG_TPTargetStatus) then {
			BRG_TPTargetStatus = true; 
			BRG_TPTargetID = player addAction ["3D Teleport", "[] call BRG_TPTargetGO;"];
		};
		hint '3D teleport action menu ENABLED\n Using the action menu option, look where you want to go and activate it to go there.';
	};

	BRG_TPTargetOff = {
		BRG_TPTargetStatus = false; 
		player removeAction BRG_TPTargetID;
		hint '3D teleport action menu Disabled';
		};

	BRG_TPObj = "vehicle player";

	BRG_TPObjPlayer = {
		BRG_TPObj = 'player'; 
		hint "Vehicle teleporting Disabled";
	};

	BRG_TPObjVehicle = {
		BRG_TPObj = 'vehicle player'; 
		hint "Vehicle teleporting Enabled";
	};
};

switch (_this) do {
	case "diary":{
		player createDiaryRecord ["BRG_CheatMenu", ["Teleport", "
			Map Teleport <font color='#33CC33'><execute expression = '[] call BRG_TPOn'>Enabled</execute></font color> <font color='#CC0000'><execute expression = '[] call BRG_TPOff'>Disabled</execute></font color><br/>
			3D Teleport <font color='#33CC33'><execute expression = '[] call BRG_TPTargetOn'>Enabled</execute></font color> <font color='#CC0000'><execute expression = '[] call BRG_TPTargetOff'>Disabled</execute></font color><br/><br/>
			Teleport Vehicle <font color='#33CC33'><execute expression = '[] call BRG_TPObjVehicle;'>Enabled</execute></font color> <font color='#CC0000'><execute expression = '[] call BRG_TPObjPlayer;'>Disabled</execute></font color>"]];
	};
	case "teleport_map_enable":{[] call BRG_TPOn};
	case "teleport_map_disable":{[] call BRG_TPOff};
	case "teleport_3d_enable":{[] call BRG_TPTargetOn};
	case "teleport_3d_disable":{[] call BRG_TPTargetOff};
	case "teleport_veh_enable":{[] call BRG_TPObjVehicle};
	case "teleport_veh_disable":{[] call BRG_TPObjPlayer};
};

