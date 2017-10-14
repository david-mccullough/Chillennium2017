///@param enemyid
///@param action

var act = argument1;
var bool = false;

with argument0
{
	if (act == pattern[patternIndex])
	{
		//success
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
			//TODO flash!!!
		}	
	}
	else
	{
		//do nothing
	}
}

return bool;