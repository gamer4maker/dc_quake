@echo off

cd\
cd D:\Games\GOG\Quake\dev\maps


echo Copying Files...
copy D:\Games\GOG\Quake\dev\maps\quoth-test.map D:\Games\GOG\Quake\dev\maps


echo Converting map...


echo --------------QBSP--------------
D:\Games\GOG\Quake\tools\bin\qbsp.exe quoth-test

echo --------------VIS---------------
D:\Games\GOG\Quake\tools\bin\vis.exe quoth-test

echo -------------LIGHT--------------
D:\Games\GOG\Quake\tools\bin\light.exe quoth-test

copy quoth-test.bsp D:\Games\GOG\Quake\id1\maps
copy quoth-test.pts D:\Games\GOG\Quake\id1\maps
copy quoth-test.lit D:\Games\GOG\Quake\id1\maps
cd\
cd D:\Games\GOG\Quake
quakespasm  -hipnotic -game quoth +map quoth-test
