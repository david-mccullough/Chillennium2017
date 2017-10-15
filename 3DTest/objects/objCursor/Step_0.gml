/// @description Insert description here
// You can write your code in this editor
x = round(mouse_x);
y = round(mouse_y);

if !gui
{
switch state
{
	case mouseState.idle:
	
		//press left mb
		if mblPressed
		{
			state = mouseState.pressed;
	
			
		}

		//hover
		else
		{

		}
		break;
	
	case mouseState.pressed:
		
		if (mouse_check_button_released(mb_left))
		{	
			state = mouseState.idle;
		}
	
		break;
	
	case mouseState.disabled:
		//change sprite or alpha maybe
		break;
}
}

if gui = true
{ 
	event_user(10);
}
