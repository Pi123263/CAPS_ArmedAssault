titleCut ["","BLACK OUT", 0];
camUseNVG true;;


_camera = "camera" camCreate position kamera;
_camera cameraEffect ["internal","back"];

enableRadio false;

//=== 10:32:09
_camera camSetTarget position kamera;
_camera camSetPos [(getpos kamera select 0)-16, (getpos kamera select 1)-16, 4];
_camera camSetFOV 0.700;
_camera camCommit 0;
waitUntil{ camCommitted _camera };

titleCut ["","BLACK IN", 1];

//=== 10:34:21
_camera camSetTarget position kamera;
_camera camSetPos [(getpos kamera select 0)-20, (getpos kamera select 1)-20, 6];
_camera camSetFOV 0.700;
_camera camCommit 3;
waitUntil{ camCommitted _camera };

titleText [localize "STR_M15h03", "PLAIN DOWN",0.3];

//=== 10:34:21
_camera camSetTarget position kamera;
_camera camSetPos [(getpos kamera select 0)-20, (getpos kamera select 1)-30, 8];
_camera camSetFOV 0.800;
_camera camCommit 3;
waitUntil{ camCommitted _camera };

titleCut ["","BLACK OUT", 1];

_camera camSetTarget position kamera;
_camera camSetPos [(getpos kamera select 0)-20, (getpos kamera select 1)-30, 9];
_camera camSetFOV 0.900;
_camera camCommit 2;
waitUntil{ camCommitted _camera };


kamera cameraEffect ["terminate","back"];
camDestroy _camera;
camUseNVG false;;

CAPS_M15_S05=2; 
savevar "CAPS_M15_S05";
over2 = true;
