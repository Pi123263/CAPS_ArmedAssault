//init
_camera = "camera" camCreate [9578.59,3540.29,1.66];
_camera cameraEffect ["internal","back"];

titleCut ["","BLACK IN",1000];

[royal, 2] setWPPos [(getpos aP select 0)-3, getpos aP select 1, getpos aP select 2]; royal doWatch aP;;

//=== 14:27:14
_camera camSetTarget position royal;
_camera camSetPos [(getpos player select 0)-2,(getpos player select 1)-2,1.8];
_camera camSetFOV 0.200;
_camera camCommit 0;
waitUntil{ camCommitted _camera };

//=== 14:27:29
_camera camSetTarget position royal;
_camera camSetPos [(getpos player select 0)-2,(getpos player select 1)-2,1.8];
_camera camSetFOV 1.000;
_camera camCommit 18;
waitUntil{ camCommitted _camera };

//=== 14:27:29
_camera camSetTarget position royal;
_camera camSetPos [(getpos player select 0)-2,(getpos player select 1)-2,1.8];
_camera camSetFOV 1.000;
_camera camCommit 3;
waitUntil{ camCommitted _camera };

royal say "09v30";;

//=== 14:27:29
_camera camSetTarget [(getpos royal select 0),getpos royal select 1,1.8];
_camera camSetPos [(getpos player select 0),(getpos player select 1),1.8];
_camera camSetFOV 1.000;
_camera camCommit 5;
waitUntil{ camCommitted _camera };

naklad=1;

over = true;;
setacctime 1;
player cameraEffect ["terminate","back"];
camDestroy _camera;
exit;
