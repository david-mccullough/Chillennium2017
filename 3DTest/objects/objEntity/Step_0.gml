/// @description

dir = point_direction(x,y,xTarget,yTarget);

if xTarget != x and yTarget != y
{
	currentSpeed = moveSpeed;
}
else
{
	currentSpeed = 0;
}

EntityMove(currentSpeed, dir);



