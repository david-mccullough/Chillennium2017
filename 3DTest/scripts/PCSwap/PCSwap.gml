///PCSwap
///@param pcID

var inst = argument0;



global.target = inst;
with objPlayer
{
	control = inst;
}

with objCameraManager
{
	follow_target = inst;
}


with objEnemy
{
	desiredTarget = inst;
}

