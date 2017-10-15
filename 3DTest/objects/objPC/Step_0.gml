/// @description Insert description here
// You can write your code in this editor
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
	var_saturation = 1;
}
else
{
	var_saturation = -1;
}