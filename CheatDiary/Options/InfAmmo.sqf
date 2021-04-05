if (isNil "BRG_InfAmmo_init") then {
	BRG_InfAmmo_init = true;

	BRG_InfAmmo = false;//prevents multiple eventhandler entries
	BRG_InfAmmoOn = {
		if (!BRG_InfAmmo) then {
			BRG_InfAmmo = true; 
			BRG_InfAmmoID = player addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
		};
		hint 'Infinite ammo ENABLED';
		PUB_PN = name player;publicVariable "PUB_PN";format ["%1 uses InfiniteAmmo", PUB_PN] remoteExec ["systemChat"];
	};

	BRG_InfAmmoOff = {
		BRG_InfAmmo = false; player removeEventHandler ["fired", BRG_InfAmmoID];
		hint 'Infinite ammo DISABLED';
	};
};

switch (_this) do {
	case "diary":{
		player createDiaryRecord ["BRG_CheatMenu", ["Infinite Ammo", "Infinite Ammo <font color='#33CC33'><execute expression = '[] call BRG_InfAmmoOn'>Enabled</execute></font color> <font color='#CC0000'><execute expression = '[] call BRG_InfAmmoOff'>Disabled</execute></font color><br/>
		NOTICE: Currently this feature works with handguns and primary weapons only. This is due behaviour of an Arma 3 command. This might be fixed in a future mod update."]];
	};
	case "InfAmmoOn":{[] call BRG_InfAmmoOn};
	case "InfAmmoOff":{[] call BRG_InfAmmoOff};

};



