/*goto "NOTDIALOG"
_x = 300;

_display = findDisplay 1000;
_ctrl = _display displayCtrl 2000;

#Loop

_ctrl ctrlSetText format ["%1",_x];
? _x <= 0 : closeDialog 1000; exit;
_x = _x - 1;
~1
goto "Loop"


#NOTDIALOG 
*/

_cas = 300;
while { _cas > 0 or !vzdal or !dovezl } do {
	titleText [format [localize "STRC_CM02n02", _cas],"PLAIN DOWN"];
	_cas = _cas - 1;
	sleep 1;
};

