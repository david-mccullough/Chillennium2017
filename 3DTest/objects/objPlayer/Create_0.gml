/// @description
if !instance_exists(objPC)
{
	stuSpawnPos = vect2(64,128);
	masSpawnPos = vect2(128,64);
	globalvar student;
	globalvar master;
	student = instance_create_depth(stuSpawnPos[0],stuSpawnPos[1],0,objStudent);
	master = instance_create_depth(masSpawnPos[0],masSpawnPos[1],0,objMaster);
}

control = student;

global.mainGUI = instance_create_depth(x,y,0,objGUILayer);
global.HUD = gui_create(0,0,1001,guiPanel,global.mainGUI);
var i = 0;
while i < control.hp
{
	hpHearts[i] = gui_create(32+i*48,32,0,guiHP,global.mainGUI);
	PanelAttach(hpHearts[i],global.HUD,24+i*40,24,false);
	i++;
}
