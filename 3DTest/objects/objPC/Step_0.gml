/// @description Insert description here
// You can write your code in this editor

switch state
{
	case playerState.idle:
		
		moveSpeed = defaultSpeed;
		if objCursor.state = mouseState.pressed && objPlayer.control == id
		{
			xTarget = objCursor.x;
			yTarget = objCursor.y;
			dir = point_direction(x,y,xTarget,yTarget);
		}
		else
		{
			xTarget = x;
			yTarget = y;
		}
			
		if mbrPressed && objPlayer.control == id
		{
			PCDash(id,dashSpeed);
		}
			

	break;
	
	case playerState.dash:
		var hitEnemy = instance_place(x,y,objEnemy)
		if hitEnemy != noone
		{
			EnemyCheckAction(hitEnemy,action) //hit with dash?
		}
		dashDecel = approach(dashDecel, dashDecelEnd, dashDecelEnd);
		moveSpeed = approach(moveSpeed, 0, dashDecel);
		if moveSpeed == 0
		{
			state = playerState.idle;
		}
	break;
}


if xTarget != x and yTarget != y
{
	currentSpeed = moveSpeed;
}
else if state != playerState.dash
{
	if moveSpeed != 0
	{
		currentSpeed = approach(currentSpeed, 0, decel);
	}
}

EntityMove(currentSpeed, dir);

if action == 0
{
	var_saturation = 1
}
else
{
	var_saturation = -1;
}

facing = round(dcos(dir))

	if dcos(dir) < 0
	facing = -1
	else
	facing = 1

image_xscale = facing;