/// @description Insert description here
// You can write your code in this editor
if !global.levelEditorEnabled
{
	if (window_has_focus()) {
	    display_mouse_lock(window_get_x(), window_get_y(), window_get_width(), window_get_height());
	} else display_mouse_unlock();
}

x = round(mouse_x);
y = round(mouse_y);

gui = global.levelEditorEnabled

event_user(10);

if !gui
{
/*
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
}*/

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


	

