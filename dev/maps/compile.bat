@echo off

cd\
cd D:\Games\GOG\Quake\dev\maps


echo Copying Files...
copy D:\Games\GOG\Quake\dev\maps\quoth1a.map D:\Games\GOG\Quake\dev\maps


echo Converting map...


echo --------------QBSP--------------
D:\Games\GOG\Quake\tools\bin\qbsp.exe quoth1a

echo --------------VIS---------------
D:\Games\GOG\Quake\tools\bin\vis.exe quoth1a

echo -------------LIGHT--------------
D:\Games\GOG\Quake\tools\bin\light.exe quoth1a

copy quoth1a.bsp D:\Games\GOG\Quake\id1\maps
copy quoth1a.pts D:\Games\GOG\Quake\id1\maps
copy quoth1a.lit D:\Games\GOG\Quake\id1\maps
cd\
cd D:\Games\GOG\Quake
quakespasm  -hipnotic -game quoth +map quoth1a
