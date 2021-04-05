if (isNil "BRG_Invicibility_init") then {
	BRG_Invicibility_init = true;

	BRG_InvincibilityOn = 
	{
		player allowDamage false; 
		player setdamage 0; 
		hint 'Invincibility ENABLED';
		PUB_PN = name player;publicVariable "PUB_PN";format ["%1 uses Invincibility", PUB_PN] remoteExec ["systemChat"];
	};

	BRG_InvincibilityOff = 
	{
		player allowDamage true; 
		hint 'Invincibility DISABLED'
	};
	//---vehicle//
	BRG_InvincibilityVehOn = 
	{
		if (!(vehicle player == player)) then 
		{
			(vehicle player) allowDamage false; 
			(vehicle player) setdamage 0; 
			hint 'Current vehicle invincibility ENABLED'
		} 
		else 
		{
			hint "You must be in a vehicle to activate this feature"
		};
	};
	BRG_InvincibilityVehOff = 
	{
		if (!(vehicle player == player)) then 
		{
			(vehicle player) allowDamage true; 
			hint 'Current vehicle invincibility DISABLED'
		} 
		else 
		{
			hint "You must be in a vehicle to activate this feature"
		};
	};

	//group
	BRG_GroupInvincibilityOn = 
	{
		hint 'Group invincibility ENABLED';
		{
			_x allowDamage false; 
			_x setdamage 0; 
		} foreach ((units (group player)) - [player]);
	};

	BRG_GroupInvincibilityOff = 
	{
		hint 'Group invincibility DISABLED';
		{
			_x allowDamage true;  
		} foreach ((units (group player)) - [player]);
	};
};

switch (_this) do {
	case "diary":{
		player createDiaryRecord ["BRG_CheatMenu", ["Invincibility", "
			Invincibility <font color='#33CC33'><execute expression = '[] call BRG_InvincibilityOn'>Enabled</execute></font color> <font color='#CC0000'><execute expression = '[] call BRG_InvincibilityOff'>Disabled</execute></font color><br/>
			Current vehicle <font color='#33CC33'><execute expression = '[] call BRG_InvincibilityVehOn'>Enabled</execute></font color> <font color='#CC0000'><execute expression = '[] call BRG_InvincibilityVehOff'>Disabled</execute></font color><br/>
			Group Members <font color='#33CC33'><execute expression = '[] call BRG_GroupInvincibilityOn'>Enabled</execute></font color> <font color='#CC0000'><execute expression = '[] call BRG_GroupInvincibilityOff'>Disabled</execute></font color>
		"]];
	};
	case "InvincibilityOn":{[] call BRG_InvincibilityOn};
	case "InvincibilityOff":{[] call BRG_InvincibilityOff};
	case "InvincibilityVehOn":{[] call BRG_InvincibilityVehOn};
	case "InvincibilityVehOff":{[] call BRG_InvincibilityVehOff};
	case "GroupInvincibilityOn":{[] call BRG_GroupInvincibilityOn};
	case "GroupInvincibilityOff":{[] call BRG_GroupInvincibilityOff};

};
