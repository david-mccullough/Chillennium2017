//var inst = argument0;


//global.target = inst;
with objPlayer
{
	control = student;
}

with objCameraManager
{
	follow_target = student;
}


with objEnemy
{
	desiredTarget = student;
	target = student
}

with objWaves
{
	show_debug_message("COOL")
	alarm[0] = room_speed*3
	alarm[1] = room_speed*1
}

