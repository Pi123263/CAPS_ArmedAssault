titleCut ["","BLACK OUT", 1];
sleep 1;


_camera = "camera" camCreate position wuh1;
_camera cameraEffect ["internal","back"];

enableRadio false;;
wuh1 engineon false;;

//=== 10:32:09
_camera camSetTarget position wuh1;
_camera camSetPos [(getpos wuh1 select 0)-10, (getpos wuh1 select 1)-10, 4];
_camera camSetFOV 0.700;
_camera camCommit 0;
waitUntil{ camCommitted _camera };

titleCut ["","BLACK IN", 1];

sleep 0.1;

//=== 10:34:21
_camera camSetTarget position wuh1;
_camera camSetPos [(getpos wuh1 select 0)-20, (getpos wuh1 select 1)-20, 6];
_camera camSetFOV 0.700;
_camera camCommit 3;
waitUntil{ camCommitted _camera };

titleText [localize "STR_MISSION_FAILED_CA", "PLAIN DOWN",0.3];;

//=== 10:34:21
_camera camSetTarget position wuh1;
_camera camSetPos [(getpos wuh1 select 0)-15, (getpos wuh1 select 1)-30, 8];
_camera camSetFOV 0.800;
_camera camCommit 4;
waitUntil{ camCommitted _camera };

titleCut ["","BLACK OUT", 1];
sleep 1;

wuh1 cameraEffect ["terminate","back"];
camDestroy _camera;

missionfailed = true;
