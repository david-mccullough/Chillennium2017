///@param obj
///@param spd

with argument0
{
	state = playerState.dash;	
	moveSpeed = argument1;
	dashDecel = dashDecelStart
	
	dir = point_direction(x,y,xTarget, yTarget);
	
	
	alarm[2] = dashCool;
	canDash = false;
}