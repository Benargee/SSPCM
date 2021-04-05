//Script Created By Benargee, 2015. http://wiki.benargee.com http://www.benargee.com http://steamcommunity.com/id/Benargee/
//Todo: Alot of this is unnecessary and redundant. Need to trim some fat in this file 

//Zeus Module
CuratorLogicGroup = creategroup sideLogic;  
CheatCurator = CuratorLogicGroup createunit ["ModuleCurator_F", [0, 90, 90],[],0.5,"NONE"];    
CheatCurator setvariable ["text","CheatCurator"];     
CheatCurator setvariable ["Addons",3,true];//3: allow all addons with proper use of CfgPatches
CheatCurator setvariable ["owner","objnull"];  
CheatCurator setvariable ["vehicleinit","_this setvariable ['Addons',3,true]; _this setvariable ['owner','objnull'];"]; 
unassignCurator CheatCurator;
objnull assignCurator CheatCurator;





//Player attributes module
CheatCuratorPlayerAttributes = CuratorLogicGroup createunit ["ModuleCuratorSetAttributesPlayer_F", [2, 91, 91],[],0.5,"NONE"];
CheatCuratorPlayerAttributes setvariable ["curator","CheatCurator"];
CheatCuratorPlayerAttributes setvariable ["unitpos",true];
CheatCuratorPlayerAttributes setvariable ['fuel',true];
CheatCuratorPlayerAttributes setvariable ['respawnposition',true];
CheatCuratorPlayerAttributes setvariable ['respawnvehicle',true];
CheatCuratorPlayerAttributes setvariable ['skill',true];
CheatCuratorPlayerAttributes setvariable ['rank',true];
CheatCuratorPlayerAttributes setvariable ['damage',true];
CheatCuratorPlayerAttributes setvariable ['exec',true];
CheatCuratorPlayerAttributes setvariable ['lock',true];

CheatCuratorPlayerAttributes setvariable [
	"vehicleinit","
	_this setvariable ['curator','CheatCurator']; 
	_this setvariable ['unitpos',true];
	_this setvariable ['fuel',true];
	_this setvariable ['respawnposition',true];
	_this setvariable ['respawnvehicle',true];
	_this setvariable ['skill',true];
	_this setvariable ['rank',true];
	_this setvariable ['damage',true];
	_this setvariable ['exec',true];
	_this setvariable ['lock',true];
	"];

	
