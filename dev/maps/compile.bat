@echo off

cd\
cd D:\Games\GOG\Quake\dev\maps


echo Copying Files...
copy D:\Games\GOG\Quake\dev\maps\quoth1.map D:\Games\GOG\Quake\dev\maps


echo Converting map...


echo --------------QBSP--------------
D:\Games\GOG\Quake\tools\bin\qbsp.exe quoth1

echo --------------VIS---------------
D:\Games\GOG\Quake\tools\bin\vis.exe quoth1

echo -------------LIGHT--------------
D:\Games\GOG\Quake\tools\bin\light.exe quoth1

copy quoth1.bsp D:\Games\GOG\Quake\id1\maps
copy quoth1.pts D:\Games\GOG\Quake\id1\maps
copy quoth1.lit D:\Games\GOG\Quake\id1\maps
cd\
cd D:\Games\GOG\Quake
quakespasm  -hipnotic -game quoth +map quoth1
