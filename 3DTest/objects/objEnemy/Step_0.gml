/// @description Insert description here
// You can write your code in this edito
if instance_exists(desiredTarget)
{
	target = desiredTarget;
}

if instance_exists(target)
{
	if (distance_to_object(target) <= aggroDist) //condition to aggress
	{
		xTarget = target.x;
		yTarget = target.y;
	}
}
else
{
	xTarget = x;
	yTarget = y;
}

event_inherited()