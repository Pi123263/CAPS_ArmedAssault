//init
playgroup setBehaviour "CARELESS";;

[speecherg, 4] setWPPos [(getpos aP select 0)-2, getpos aP select 1, getpos aP select 2]; speecher doWatch aP;;
_camera = "camera" camCreate [9578.59,3540.29,1.66];
_camera cameraEffect ["internal","back"];

titleCut ["","BLACK IN",1000];

//=== 14:27:14
_camera camSetTarget position player;
_camera camSetPos [getpos camera2 select 0,getpos camera2 select 1,5];
_camera camSetFOV 0.700;
_camera camCommit 0;
waitUntil{ camCommitted _camera };


//=== 14:27:29
_camera camSetTarget position player;
_camera camSetPos [(getpos camera2 select 0)+2,getpos camera2 select 1,5];
_camera camSetFOV 0.300;
_camera camCommit 15;
waitUntil{ camCommitted _camera };

speecher doWatch player;;

//=== 14:27:29
_camera camSetTarget position player;
_camera camSetPos [(getpos camera2 select 0)+2,getpos camera2 select 1,5];
_camera camSetFOV 0.190;
_camera camCommit 35;
waitUntil{ camCommitted _camera };

//=== 14:27:29
_camera camSetTarget [(getpos player select 0),getpos player select 1,1];
_camera camSetPos [(getpos speecher select 0)-5,(getpos speecher select 1)+3,1];
_camera camSetFOV 0.400;
_camera camCommit 5;
waitUntil{ camCommitted _camera };

player dowatch s3;;

//=== 14:27:29
_camera camSetTarget [(getpos player select 0),getpos player select 1,2];
_camera camSetPos [(getpos speecher select 0)-2,(getpos speecher select 1)+3,1];
_camera camSetFOV 0.400;
_camera camCommit 30;
waitUntil{ camCommitted _camera };

//=== 14:27:29
_camera camSetTarget [(getpos speecher select 0),getpos speecher select 1,1.8];
_camera camSetPos [(getpos player select 0),(getpos player select 1),1.8];
_camera camSetFOV 1.00;
_camera camCommit 3;
waitUntil{ camCommitted _camera };

{_x doWatch aP} forEach [c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c18,c19,c20,c21];

over = true;;
setacctime 1;
player cameraEffect ["terminate","back"];
_this switchMove "";
camDestroy _camera;
exit;
