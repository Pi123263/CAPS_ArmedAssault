_preload = [] spawn {@preloadCamera [4956.04,6906.71,15.44] and 2 preloadObject aUH and 2 preloadobject "SoldierWSaboteurPipe" and 2 preloadobject "SoldierWPilot"};
sleep 3;

_camera = "camera" camCreate [4956.04,6906.71,15.44];
_camera cameraEffect ["internal","back"];
titleCut ["","BLACK IN", 2];


enableRadio false;

//=== 13:15:44
_camera camSetTarget [-84276.40,45393.84,-23412.94];
_camera camSetFOV 0.700;
_camera camCommit 0;
waitUntil{ camCommitted _camera };

sleep 3;
titleCut ["","BLACK OUT", 3];
terminate _preload;
sleep 3;

player cameraEffect ["terminate","back"];
camDestroy _camera;

Over2=true;
