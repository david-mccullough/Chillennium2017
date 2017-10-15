//var inst = argument0;


//global.target = inst;
with objPlayer
{
	control = noone;
}

with objCameraManager
{
	follow_target = master;
}


with objEnemy
{
	desiredTarget = noone;
	target = noone
}


objWaves.init = false

var tline;
switch argument0
{
	case 0:
		tline= tlLessonOne;
	break;
	
	case 1:
		tline= tLessonTwo;
	break;
	
	case 2:
		tline= tLessonThree;
	break;
	case 4:
		tline= tBoss;
	break;
	case 5:
		//TODO WIN
	break;
}

with objMaster
{
	timeline_index = tline
	timeline_position = 0
	timeline_running = true;
	timeline_loop = false;
}