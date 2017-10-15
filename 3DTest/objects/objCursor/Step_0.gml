/// @description Insert description here
// You can write your code in this editor
x = round(mouse_x);
y = round(mouse_y);

gui = global.levelEditorEnabled

event_user(10);

if !gui
{

if instance_exists(objPlayer)
{
	switch(objPlayer.control.state)
	{
		case playerState.idle:
			sprite_index = sprCursorMove;
		break;
	
		case playerState.dash:
			sprite_index = sprCursor;
		break;
	
		case playerState.bow:
			sprite_index = sprCursorBow;
		break;
	}
}
else
{
	sprite_index = sprCursor
}

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


	

