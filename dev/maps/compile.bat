@echo off

cd\
cd D:\Games\GOG\Quake\dev\maps


echo Copying Files...
copy D:\Games\GOG\Quake\dev\maps\quoth1b.map D:\Games\GOG\Quake\dev\maps


echo Converting map...


echo --------------QBSP--------------
D:\Games\GOG\Quake\tools\bin\qbsp.exe quoth1b

echo --------------VIS---------------
D:\Games\GOG\Quake\tools\bin\vis.exe quoth1b

echo -------------LIGHT--------------
D:\Games\GOG\Quake\tools\bin\light.exe quoth1b

copy quoth1b.bsp D:\Games\GOG\Quake\id1\maps
copy quoth1b.pts D:\Games\GOG\Quake\id1\maps
copy quoth1b.lit D:\Games\GOG\Quake\id1\maps
cd\
cd D:\Games\GOG\Quake
quakespasm  -hipnotic -game quoth +map quoth1b
