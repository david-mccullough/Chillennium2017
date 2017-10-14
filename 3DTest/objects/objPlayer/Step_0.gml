/// @description
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

if mbmPressed
{
	if control = student {control = master}
	else {control = student}

}