///PCSwap
///@param pcID

var inst = argument0;

global.target = inst;
with objPlayer
{
	control = inst;
}

objCameraManager.follow_target = inst;


with objEnemy
{
	target = inst;
}

