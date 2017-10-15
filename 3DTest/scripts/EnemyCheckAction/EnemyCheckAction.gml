///@param enemyid
///@param action

var act = argument1;
var bool = false;

with argument0
{
	//show_debug_message(string(act) + " " + string(pattern[patternIndex]))
	if (act == pattern[patternIndex])
	{
		canDamage= false;
		invuln= true;
		alarm[3] = 20;
		
		//success
		Sleep(80);
		screen_shake(5,20,irandom(360))
		
		bool = true;
		patternIndex+=1;
		if patternIndex == array_length_1d(pattern)
		{
			//defeated!
			EnemyDie(id);
			
		}
		else
		{
			//next pattern state
			patternState = pattern[patternIndex]
		}	
	}
	else
	{
		//do nothing
	}
}

return bool;