/// @description spawn wave
if instance_number(objEnemy) == 0
&& instance_number(objESpawner) == 0
&& init = true
{
	wave = ds_list_find_value(waves,currentWave)

	numEnemies = array_length_1d(wave)
	angleInterval = 360/numEnemies;

	var baseAngle = choose(0,30,45)
	for (var i =0; i<numEnemies; i++)
	{
		var theta = baseAngle + angleInterval*i;
		var xx = x+lengthdir_x(128,theta)
		var yy = y+lengthdir_y(128,theta)
		var temp = instance_create_depth(xx,yy,0,objESpawner)
		with temp
		{
			time = room_speed*2 +  i * 30;
			alarm[0] = time;
		}
		temp.identity = wave[i];
	}
}