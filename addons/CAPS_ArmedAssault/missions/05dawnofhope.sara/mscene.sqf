enableRadio false;;
titleCut ["","BLACK OUT",1];;

sleep 1;

playmusic "Atrack6";

// NASTAVENI JEDNOTEK PRO SCENU

{_x setpos position spawn11} foreach units blueai;;
ais setpos [10100.1,9884.25,0.00169373];;
{_x stop false} foreach units blueai;;

ps setpos [10088.5,9897.34,0];;
{_x setpos position spawn10} foreach units apg;;
{_x domove position ps} foreach units apg;;
swi=1;;

sleep 2;

// KAMERA STAT

_camera = "camera" camCreate [10080.88,9856.35,10.71];
_camera cameraEffect ["internal","back"];

//=== 10:32:09
_camera camPrepareTarget [30702.94,105964.44,-18239.19];
_camera camPreparePos [10080.88,9856.35,10.71];
_camera camSetFOV 0.700;
_camera camCommitPrepared 0;
waitUntil{ camCommitted _camera };

sleep 1;

titleCut ["","BLACK IN",1];;

sleep 1;

playsound "05v04";;


// KAMERA POHYB NASTUP JEDNOTEK

//=== 10:34:21
_camera camPrepareTarget [44450.21,100894.28,-22925.95];
_camera camPreparePos [10089.52,9859.67,6.06];
_camera camSetFOV 0.700;
_camera camCommitPrepared 20;
waitUntil{ camCommitted _camera };

titleCut ["","BLACK OUT",1];;

//=== 10:34:21
_camera camPrepareTarget [44450.21,100894.28,-22925.95];
_camera camPreparePos [10089.52,9859.67,6.06];
_camera camSetFOV 0.700;
_camera camCommitPrepared 2;
waitUntil{ camCommitted _camera };

{_x moveincargo ps} foreach units apg;;
ap moveincargo ps;;
blueai setbehaviour "CARELESS";;
apg setbehaviour "SAFE";;
ss1 moveincargo ais; ss2 moveincargo ais; ss3 moveincargo ais; ss4 moveincargo ais;;
platlead moveindriver ais;;
platgun moveingunner ais;;
ps lock true;;

player cameraEffect ["terminate","back"];
camDestroy _camera;

sleep 1;

titleCut ["","BLACK IN",1];;

sleep 1;

changewp=1;;
cts_over=true;;
enableRadio true;;
