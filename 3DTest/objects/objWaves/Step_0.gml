/// @description Insert description here
// You can write your code in this editor


if instance_number(objEnemy) == 0
&& instance_number(objESpawner) == 0
&& init = true
{
	if currentWave < ds_list_size(waves)
	{
		//next wave
		currentWave++;
		wave = 0;
		event_user(0)
	}
	else
	{
		currentWave = 0;
		global.phase++;
		WavePop(global.phase)
		//event_user(0)
		CinematicStart(global.phase)
	}
}