BRG_LinkBISForum = {["Click: <a href='http://forums.bistudio.com/showthread.php?190017-Simple-Single-Player-Cheat-Menu'>http://forums.bistudio.com/showthread.php?190017-Simple-Single-Player-Cheat-Menu</a>","Bohemia Interactive Forum page", False, True] spawn BIS_fnc_guiMessage;};
BRG_LinkArmaholic = {["Click: <a href='http://www.armaholic.com/page.php?id=28400'>http://www.armaholic.com/page.php?id=28400</a>","Armaholic page", False, True] spawn BIS_fnc_guiMessage;};
BRG_LinkSteam = {["Click: <a href='http://steamcommunity.com/sharedfiles/filedetails/?id=410206202'>http://steamcommunity.com/sharedfiles/filedetails/?id=410206202</a>","Steam Workshop page", False, True] spawn BIS_fnc_guiMessage;};
BRG_LinkPW6 = {["Click: <a href='http://play.withsix.com/arma-3/mods/nFbxvKMmfkissfP66MhBBA/Simple-Single-Player-Cheat-Menu'>http://play.withsix.com/arma-3/mods/nFbxvKMmfkissfP66MhBBA/Simple-Single-Player-Cheat-Menu</a>","Play With Six Page", False, True] spawn BIS_fnc_guiMessage;};
BRG_LinkMyWiki = {["Click: <a href='http://wiki.benargee.com/Simple_Single_Player_Cheat_Menu'>http://wiki.benargee.com/Simple_Single_Player_Cheat_Menu</a>","My Wiki Page", False, True] spawn BIS_fnc_guiMessage;};
BRG_LinkArmaCheats = {["Click: <a href='https://community.bistudio.com/wiki/ArmA:_Cheats'>https://community.bistudio.com/wiki/ArmA:_Cheats</a>","My Wiki Page", False, True] spawn BIS_fnc_guiMessage;};

switch (_this) do {
	case "diary":{
	player createDiaryRecord ["BRG_CheatMenu", ["Information",("
		SSPCM v" + (gettext (configfile >> "CfgPatches" >> "SSPCM" >> "versionStr")) +"<br/>
		<font color='#3399FF'><execute expression = '[] call BRG_LinkBISForum'>Bohemia Interactive Forum page</execute></font color><br/>
		<font color='#3399FF'><execute expression = '[] call BRG_LinkArmaholic'>Armaholic page</execute></font color><br/>
		<font color='#3399FF'><execute expression = '[] call BRG_LinkSteam'>Steam Workshop page</execute></font color><br/>
		<font color='#3399FF'><execute expression = '[] call BRG_LinkPW6'>Play With Six Page</execute></font color><br/>
		<font color='#3399FF'><execute expression = '[] call BRG_LinkMyWiki'>My Wiki Page</execute></font color><br/>
		<font color='#3399FF'><execute expression = '[] call BRG_LinkArmaCheats'>Standard Arma 3 cheats</execute></font color><br/>
		")]];
	};
};