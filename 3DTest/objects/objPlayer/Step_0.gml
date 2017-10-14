/// @description
with control
{
	switch state
	{
		case playerState.idle:
			
			if !objPlayer.isLocked
			{
				moveSpeed = defaultSpeed;
				if objCursor.state = mouseState.pressed
				{
					xTarget = objCursor.x;
					yTarget = objCursor.y;
				}
				else
				{
					xTarget = x;
					yTarget = y;
				}
			}
		
			if objPlayer.isLocked && mblPressed
			{
				PCDash(id,dashSpeed);
			}
			else if mbrPressed
			{
				state = playerState.bow;
			}
			
		break;
	
		case playerState.dash:
			var hitEnemy = instance_place(x,y,objEnemy)
			if hitEnemy != noone
			{
				EnemyCheckAction(hitEnemy,0) //hit with dash?
			}
			dashDecel = approach(dashDecel, dashDecelEnd, dashDecelEnd);
			moveSpeed = approach(moveSpeed, 0, dashDecel);
			if moveSpeed == 0 && alarm[0] <= 0
			{
				alarm[0] = 10;
			}
			

		break;
	
		case playerState.bow:
			moveSpeed = bowSpeed;
		
			xTarget = objCursor.x;
			yTarget = objCursor.y;
			
			if mblPressed
			{
				//shoot
				show_debug_message("shoot")
			}
			if mbrReleased
			{
				state = playerState.idle;
			}
		
		break;

	}
}
if control.state == playerState.idle
{
	if objCursor.state = mouseState.pressed
	{
		control.xTarget = objCursor.x;
		control.yTarget = objCursor.y;
	}
	else
	{
		control.xTarget = control.x;
		control.yTarget = control.y;
	}
}


if mbmPressed
{
	isLocked = !isLocked;
}

if controlPressed
{
	if control = student {control = master}
	else {control = student}

}