opustil = 0;
naklad = 0;
utabora = 0; 
primovtabore = 0; 
rozhovor = 0; 
calmdown = 0; 
speecherjetu = 0; 
rozhovorover = 0; 
zdrhaj = 0; 
noplease = 0; //yes thanks
troops2 = false;
druhywp = false;
vyhodmost = 0;
vtaborenikdo = 0;
areasecured = 0;
ortego_done = 0;
tocamp = 0;
nejede = 0;
jsouucampu = 0;


"1b" objstatus "hidden";;
"2" objstatus "hidden";;
"3" objstatus "hidden";;
"4" objstatus "hidden";;

0 fademusic 1;
0 fadesound 0;
playmusic "final";;


_camera = "camera" camCreate ([13673.78,9566.76,12.40]);
_camera cameraEffect ["internal","back"];

//=== 15:53:03
_camera camPrepareTarget [14707.49,25009.33,-98788.05];
_camera camPreparePos [13593.31,9649.99,2.21];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil{ camCommitted _camera };

sleep 1;

titleCut ["","BLACK OUT", 3];

sleep 3.5;

stryker1 stop false;

sleep 2;

0 fadesound 0.1;

//=== 11:14:23
_camera camSetTarget [(getpos stryker1 select 0)+100, getpos stryker1 select 1, 5];
_camera camSetPos [getpos camera select 0, getpos camera select 1, 10];
_camera camSetFOV 0.800;
_camera camCommit 0;
waitUntil{ camCommitted _camera };

titleCut ["","BLACK IN", 1];

//=== 11:14:23
_camera camSetTarget [(getpos stryker1 select 0)+100, getpos stryker1 select 1, 5];
_camera camSetPos [getpos camera select 0, getpos camera select 1, 10];
_camera camSetFOV 0.800;
_camera camCommit 2;
waitUntil{ camCommitted _camera };

//=== 11:04:38
_camera camSetTarget [getpos stryker1 select 0, getpos stryker1 select 1, 5];
_camera camSetPos [getpos camera select 0, (getpos camera select 1) - 20, 4];
_camera camSetFOV 0.900;
_camera camCommit 8;
waitUntil{ camCommitted _camera };

titleCut ["","BLACK OUT", 1];
sleep 1;

//=== 11:12:33
_camera camPrepareTarget [-75212.12,50802.20,-18996.12];
_camera camPreparePos [13824.79,9446.97,9.03];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil{ camCommitted _camera };

//===PRELOAD LONGWAY SCREEN
_camera camPrepareTarget [48564.06,96829.37,-36894.65];
_camera camPreparePos [14054.27,10034.93,67.73];
_camera camPrepareFOV 0.700;
_camera camPreload 6;

sleep 0.3;

titleCut ["","BLACK IN", 1];
troops2=true;
sleep 1;

//===PRELOAD INSIDE STRYKER
_camera camPrepareTarget position stryker1;
_camera camPreparePos position player;
_camera camPrepareFOV 0.700;
_camera camPreload 10;

//=== 11:12:33
_camera camPrepareTarget position stryker1;
_camera camPreparePos [13824.79,9446.97,9.03];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 4;
waitUntil{ camCommitted _camera };

//=== 11:12:33
_camera camPrepareTarget position stryker1;
_camera camPreparePos [13822.79,9444.97,9.03];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 4;
waitUntil{ camCommitted _camera };

titleCut ["","BLACK OUT", 1];
sleep 1;

druhywp=true;

stryker1 setpos [14236.1,10403.6,2.67029e-005];
stryker1 setdir 20.7577;
stryker1 stop true;

stryker2 setpos [14216.1,10346.6,0.00398254];
stryker2 setdir 14.4915;
stryker2 stop true;


waitUntil{ camPreloaded _camera };
_camera camCommitPrepared 0;

//=== 14:35:41
_camera camPrepareTarget [56739.93,74684.05,-63139.61];
_camera camPreparePos [14054.27,10034.93,67.73];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil{ camCommitted _camera };

sleep 1;

titleCut ["","BLACK IN", 1];

troops=true;
stryker1 stop false;

//=== 14:37:10
_camera camPrepareTarget [48564.06,96829.37,-36894.65];
_camera camPreparePos [14261.80,10470.67,16.39];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 18;
sleep 15;
titleCut ["","BLACK OUT", 1];
sleep 1;
waitUntil{ camCommitted _camera };


waitUntil{ camPreloaded _camera };
_camera camCommitPrepared 0;


player cameraEffect ["terminate","back"];
camDestroy _camera;

sleep 2;

titleCut ["","BLACK IN", 1];
