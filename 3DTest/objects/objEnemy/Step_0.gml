/// @description Insert description here
// You can write your code in this edito
if instance_exists(desiredTarget)
{
	target = desiredTarget;
}


switch state
{
	case playerState.idle:
		
		moveSpeed = defaultSpeed;
		if instance_exists(target)
		{
			if (distance_to_object(target) <= aggroDist) //condition to aggress
			{
				xTarget = target.x;
				yTarget = target.y;
				dir = point_direction(x,y,xTarget,yTarget);
				if (distance_to_object(target) <= dashDist && canDash)
				{
					EnemyDash(id,dashSpeed);
				}
			}
			else
			{
				xTarget = x;
				yTarget = y;
			}
		}
		else
		{
			xTarget = x;
			yTarget = y;
		}
			

	break;
	
	case playerState.dash:
		dashDecel = approach(dashDecel, dashDecelEnd, dashDecelEnd);
		moveSpeed = approach(moveSpeed, 0, dashDecel);
		if moveSpeed == 0
		{
			alarm[0] = dashCool;
			state = playerState.idle;
		}
			
	break;
}

var hitEnemy = instance_place(x,y,target)
if hitEnemy != noone
{
	PlayerHitCheck(hitEnemy,pattern[patternIndex]) //hit with dash?
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

if pattern[patternIndex] == 0
{
	var_saturation = 1;
}
else
{
	var_saturation = -1;
}