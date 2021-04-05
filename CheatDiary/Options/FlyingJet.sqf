//TODO: Make aircraft selection dynamic to support any future addons or user mods.
//Currently bugged in Contact. Plane switching doesnt work well. Might be from Jet DLC and ejection seats.
if (isNil "BRG_SIJ_init") then {
	BRG_SIJ_init = true;

	BRG_SIJetAlt = 300;//default altitude
	BRG_SIJ_WipeOut = "B_Plane_CAS_01_F"; 
	BRG_SIJ_Neophron = "O_Plane_CAS_02_F"; 
	BRG_SIJ_Buzzard_CAS = "I_Plane_Fighter_03_CAS_F"; 
	BRG_SIJ_Buzzard_AA = "I_Plane_Fighter_03_AA_F";
};

switch (_this) do {
	case "diary":{
		player createDiaryRecord ["BRG_CheatMenu", ["Spawn in Jet", 
			"Spawn in a flying Jet. Choose a jet:<br/> 
			<font color='#0066FF'><execute expression = '[BRG_SIJetAlt,BRG_SIJ_WipeOut] call BRG_fnc_spawnInJet'>A-164 WipeOut</execute></font color><br/>
			<font color='#FF0000'><execute expression = '[BRG_SIJetAlt,BRG_SIJ_Neophron] call BRG_fnc_spawnInJet'>To-199 Neophron</execute></font color> <br/>
			<font color='#009900'><execute expression = '[BRG_SIJetAlt,BRG_SIJ_Buzzard_CAS] call BRG_fnc_spawnInJet'>A-143 Buzzard CAS</execute></font color> <br/>
			<font color='#009900'><execute expression = '[BRG_SIJetAlt,BRG_SIJ_Buzzard_AA] call BRG_fnc_spawnInJet'>A-143 Buzzard AA</execute></font color> <br/>
			Starting Altitude:<br/>
			<font color='#33CC33'><execute expression = 'BRG_SIJetAlt = 100;'>100m</execute></font color> <br/>
			<font color='#33CC33'><execute expression = 'BRG_SIJetAlt = 300;'>300m</execute></font color> <br/>
			<font color='#33CC33'><execute expression = 'BRG_SIJetAlt = 500;'>500m</execute></font color><br/>
			<font color='#33CC33'><execute expression = 'BRG_SIJetAlt = 1000;'>1000m</execute></font color><br/>
			<font color='#33CC33'><execute expression = 'BRG_SIJetAlt = 2000;'>2000m</execute></font color><br/>
			
			"]];
	};
	case"wipeout":{[BRG_SIJetAlt,BRG_SIJ_WipeOut] call BRG_fnc_spawnInJet};
	case"neophron":{[BRG_SIJetAlt,BRG_SIJ_Neophron] call BRG_fnc_spawnInJet};
	case"buzzardcas":{[BRG_SIJetAlt,BRG_SIJ_Buzzard_CAS] call BRG_fnc_spawnInJet};
	case"buzzardaa":{[BRG_SIJetAlt,BRG_SIJ_Buzzard_AA] call BRG_fnc_spawnInJet};
	default{
		if (typeName _this == "SCALAR") then {
			BRG_SIJetAlt = _this;
		};
	};
};
