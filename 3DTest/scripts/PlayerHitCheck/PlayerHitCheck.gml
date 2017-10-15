///@param enemyid
///@param action

var act = argument1;
var bool = false;

if canDamage
{
with argument0
{
	if (!invuln and !(state == playerState.dash and act == action))
	{
		//show_debug_message(state == playerState.dash and act != action)
		//success
		bool = true;
		show_debug_message(string(current_second) + ": player took hit")
		hp = clamp(hp-1,0,10)
		invuln= true;
		alarm[0] = iframes;
		
		screen_shake(20,20,irandom(360))
		
		//defeated!
		if hp<=0
		{
			PlayerDie(id);
		}
	}
	else
	{
		//do nothing
	}
}
}
return bool;