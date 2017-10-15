/// @description
with control
{
	switch state
	{
		case playerState.idle:
		
			moveSpeed = defaultSpeed;
			if objCursor.state = mouseState.pressed
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
			
			if mbrPressed
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
				if mbrHeld
				{
					
					//PCDash(id,dashSpeed);
				}
				else
				{
					state = playerState.idle;
				}
			}
		break;
	}
}

if spacePressed
{
	control.action = !control.action;
}

if controlPressed
{
	if control = student 
			{PCSwap(master)}
	else	{PCSwap(student)}

}