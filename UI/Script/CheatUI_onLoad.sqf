systemChat "onLoad";

params["_display"];

_listBoxCtrl = _display displayCtrl 1500;  

_optionArray = [
	["Bullet Cam", "Rsc_CtrlGrp_BRG_BulletCam"],
	["Bullet Tracing", "Rsc_CtrlGrp_BRG_BulletTracing"],
	["Debug Console", "Rsc_CtrlGrp_BRG_DebugConsole"],
	["Fatigue", "Rsc_CtrlGrp_BRG_Fatigue"],
	["Infinite Ammo", "Rsc_CtrlGrp_BRG_InfiniteAmmo"],
	["Invincibility", "Rsc_CtrlGrp_BRG_Invincibility"],
	["Side Relatations", "Rsc_CtrlGrp_BRG_SideRelatations"],
	["Spawn in Jet", "Rsc_CtrlGrp_BRG_SpawnInJet"],
	["Teleport", "Rsc_CtrlGrp_BRG_Teleport"],
	["Virtual Arsenal", "Rsc_CtrlGrp_BRG_VirtualArsenal"],
	["Virtual Garage", "Rsc_CtrlGrp_BRG_VirtualGarage"],
	["Zeus", "Rsc_CtrlGrp_BRG_Zeus"]
];

{ 
	_listBoxCtrl lbAdd (_x select 0);
	_listBoxCtrl lbSetData [_forEachIndex, (_x select 1)]

} forEach _optionArray;