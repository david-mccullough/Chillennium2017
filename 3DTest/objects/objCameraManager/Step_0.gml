#region 

var prevAngle = angle;

global.camx = view_x+view_w/2
global.camy = view_y+view_h/2
// Shake, Flash, Zoom
/*if(keyboard_check_pressed(vk_space))
	screen_shake(10,20,irandom(360));
	
if(keyboard_check_pressed(vk_enter))
	screen_flash(room_speed*.25,c_white);

//level editor zoom
if global.levelEditorEnabled && keyboard_check(vk_alt)*/ if true
/*{
	desired_zoom += (mouse_wheel_up()-mouse_wheel_down())*.1;
	desired_zoom = clamp(desired_zoom,.6,5);
	if(mouse_check_button_pressed(mb_middle))
		desired_zoom=1;

	current_zoom = approach(current_zoom,desired_zoom,.03);
}/*

#endregion


/*if keyboard_check_pressed(vk_left)
{
	angleTarget -= 45;
}
else if keyboard_check_pressed(vk_right)
{
	angleTarget += 45;
}
angleTarget = wrap(angleTarget,0,359)


if angle != angleTarget
{
	angle = angleTarget//smooth_approach(angle, angleTarget, angleSpeed);
	show_debug_message("camera angle: " + string(angle))
	var theta = angle;
	with objObject
	{
		PivotObject(id,vect2(x,y),theta)
	}
}
*/
/*if angle != angleTarget
{
	angle = angleTarget//smooth_approach(angle, angleTarget, angleSpeed);
	angle = show_debug_message(wrap(angle,0,360))

	with (objTest)
	{		
		x = global.camx+(0 + lengthdir_x(camdist,objCameraManager.angle))
		y = global.camy+(0 + lengthdir_y(camdist,objCameraManager.angle))
		show_debug_message("angle " + string(objCameraManager.angle) + "  dist: " + string(camdist))
	}
}
//update offsets
{
	with (objTest)
	{
		camdist = (distance_to_point(global.camx,global.camy))
		camxoff = global.camx - x;
		camyoff = global.camy - y;
		camdir = (point_direction(global.camx,global.camy,x,y))
	}
}

