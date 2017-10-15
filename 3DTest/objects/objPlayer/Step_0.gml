/// @description
if global.levelEditorEnabled
{
	exit;
}

if instance_exists(control)
{
	if spacePressed
	{
		control.action = !control.action;
	}
}

if controlPressed
{
	/*if control = student 
			{PCSwap(master)}
	else	{PCSwap(student)}*/
	
	CinematicStart(global.phase);

}