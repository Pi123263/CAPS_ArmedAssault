//overlay vrstvy
4 cutRsc ["bars","PLAIN",0];
1 cutRsc ["BlackFade","PLAIN",0];
99 cutRsc ["sceneA2","PLAIN",0];

_camera = "camera" camCreate [9721.48,110124.23,141.17];
_camera cameraEffect ["internal","back"];

showcinemaborder false;
enableEnvironment false;

_camera camPrepareTarget [9721.48,110124.23,141.17];
_camera camPreparePos [9727.55,10147.49,2.51];
_camera camPrepareFOV 0.5;
_camera camPreload 1;
waitUntil{ camPreloaded _camera };
_camera camCommitPrepared 0;

_camera camPrepareTarget [9721.48,110124.23,141.09];
_camera camPreparePos [9732.33,10147.49,2.51];
_camera camPrepareFOV 0.500;
_camera camCommitPrepared 40;
sleep 1;
//panel  setPos [ 9730,10150, 1];
preloadsound "x08v01";
sleep 1;
4 fadeMusic 0.2;
playmusic "track_uscutscene08";
1 cutFadeOut 2;
sleep 3;

playSound "x08v01";
preloadsound "x08v02";
sleep 3.2;
playSound "x08v02";
preloadsound "x08v03";
sleep 3.1;
99 cutFadeOut 1.1;
1 cutRsc ["sceneA1","PLAIN",0];
sleep 0.3;
playSound "x08v03";
preloadsound "x08v04";
sleep 8.3;
1 cutFadeOut 0.7;
2 cutRsc ["sceneB1","PLAIN",0];
sleep 0.5;
playSound "x08v04";
preloadsound "x08v05";
sleep 4;
playSound "x08v05";
preloadsound "x08v06";
sleep 3;
playSound "x08v06";
preloadsound "x08v07";
sleep 3;
2 cutFadeOut 0.7;
1 cutRsc ["sceneB2","PLAIN",0];
sleep 0.5;
playSound "x08v07";
preloadsound "x08v08";
sleep 1.9;
playSound "x08v08";
sleep 4;
titleText ["","PLAIN",2];
sleep 2;

4 fadeMusic 0;
sleep 0.5;
0.7 fadesound 0;

titleText ["","BLACK OUT",2];
sleep 5;
ending=true;
player cameraEffect ["terminate","back"];
camDestroy _camera;

exit;
