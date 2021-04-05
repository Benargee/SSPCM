//Thanks to tortuosit (http://forums.bistudio.com/member.php?93551-tortuosit) for adapting my VA script to this VG script!
//Virtual Garage
if (isNil "BRG_VGarage_init") then {
	BRG_VGarage_init = true;

	BRG_VGStatus = false;//prevents multiple action menu entries
	BRG_VGOpen = {
		["Open",true] spawn BIS_fnc_garage;
		PUB_PN = name player;publicVariable "PUB_PN";format ["%1 uses DCON", PUB_PN] remoteExec ["systemChat"];
	};

	BRG_VGOn = {
		if (!BRG_VGStatus) then {
			BRG_VGStatus = true; 
			BRG_VGactID = player addAction ["Virtual Garage", "[] call BRG_VGOpen;"]
		};
		hint 'Virtual Garage action menu ENABLED';
	};

	BRG_VGOff = {
		BRG_VGStatus = false; 
		player removeAction BRG_VGactID;
		hint 'Debug Console action menu DISABLED';
	};

	BRG_VGReset = {
		BIS_fnc_garage_center allowDamage true; 
		BIS_fnc_garage_center = nil; 
		hint "Previous Virtual Garage vehicle has been removed from Virtual Garage. New vehicle will be spawned when using Virtual Garage again";
		};
};

switch (_this) do {
	case "diary":{
		player createDiaryRecord ["BRG_CheatMenu", ["Virtual Garage", "Virtual Garage <font color='#33CC33'><execute expression = '[] call BRG_VGOpen'>Open</execute></font color> <font color='#33CC33'><execute expression = '[] call BRG_VGOn'>Enabled</execute></font color> <font color='#CC0000'><execute expression = '[] call BRG_VGOff'>Disabled</execute></font color><br/><br/>
			<font color='#3399FF'><execute expression = '[] call BRG_VGReset'>Reset Vehicle</execute></font color>"]];
	};
	case "vgarage_open":{[] call BRG_VGOpen};
	case "vgarage_Enable":{[] call BRG_VGOn};
	case "vgarage_Disable":{[] call BRG_VGOff};
	case "vgarage_Reset":{[] call BRG_VGReset};
};