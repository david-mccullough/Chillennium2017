///@param obj
///@param spd

with argument0
{
	state = playerState.dash;	
	moveSpeed = argument1;
	dashDecel = dashDecelStart
	
	xTarget = objCursor.x;
	yTarget = objCursor.y;
	dir = point_direction(x,y,objCursor.x, objCursor.y);
}