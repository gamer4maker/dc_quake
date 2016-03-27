@echo off

cd\
cd D:\Games\GOG\Quake\dev\maps


echo Copying Files...
copy D:\Games\GOG\Quake\dev\maps\quoth1c.map D:\Games\GOG\Quake\dev\maps


echo Converting map...


echo --------------QBSP--------------
D:\Games\GOG\Quake\tools\bin\qbsp.exe quoth1c

echo --------------VIS---------------
D:\Games\GOG\Quake\tools\bin\vis.exe quoth1c

echo -------------LIGHT--------------
D:\Games\GOG\Quake\tools\bin\light.exe quoth1c

copy quoth1c.bsp D:\Games\GOG\Quake\id1\maps
copy quoth1c.pts D:\Games\GOG\Quake\id1\maps
copy quoth1c.lit D:\Games\GOG\Quake\id1\maps
cd\
cd D:\Games\GOG\Quake
quakespasm  -hipnotic -game quoth +map quoth1c
