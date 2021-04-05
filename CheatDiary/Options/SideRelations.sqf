if (isNil "BRG_SideRelations_init") then {
	BRG_SideRelations_init = true;

	BRG_IgnoreOn = {
		player setCaptive true;hint 'Player ignored by enemy ENABLED'
	};

	BRG_IgnoreOff = {
		player setCaptive false;hint 'Player ignored by enemy DISABLED'
	};
	
	BRG_ratingNeg = {
		[-100000,player] call BRG_fnc_setRating; hint 'Player is HOSTILE to allies'
	};

	BRG_ratingPos =  {
		[100000,player] call BRG_fnc_setRating; hint 'Player is FRIENDLY to everyone'
	};
};

switch (_this) do {
	case "diary":{
		player createDiaryRecord ["BRG_CheatMenu", ["Side Relations", "
			Friendly to everybody <font color='#33CC33'><execute expression = '[] call BRG_IgnoreOn'>Enabled</execute></font color> <font color='#CC0000'><execute expression = '[] call BRG_IgnoreOff'>Disabled</execute></font color><br/>
			Friendly to allies <font color='#33CC33'><execute expression = '[] call BRG_ratingPos'>Activate</execute></font color> <br/>
			Hostile to everybody <font color='#CC0000'><execute expression = '[] call BRG_ratingNeg'>Activate</execute></font color><br/>
			"]];
	};
	case "sr_ignore_enable":{[] call BRG_IgnoreOn};
	case "sr_ignore_disable":{[] call BRG_IgnoreOff};
	case "sr_allies_friendly":{[] call BRG_ratingPos};
	case "sr_all_hostile":{[] call BRG_ratingNeg};
};

