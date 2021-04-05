

params ["_control", "_selectedIndex"];

_display = ctrlParent _control;
//_contentCtrl = _display displayCtrl 1004;
_subTitleCtrl = _display displayCtrl 1002;
_text = _control lbText _selectedIndex;

_subTitleCtrl ctrlSetText _text;
systemChat format["selected: %1",_text];


_content = "Zeus Editor ";


//_contentCtrl ctrlSetText _content;
_oldGroupCtrl = _display displayCtrl 1234;
ctrlDelete _oldGroupCtrl;
_ctrlClass = _control lbData _selectedIndex;
_display ctrlCreate [_ctrlClass, 1234];
//CMGroupZeus