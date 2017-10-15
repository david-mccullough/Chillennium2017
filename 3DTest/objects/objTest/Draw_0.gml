/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black)
for(var i = 0; i < 360; i+=10)
{
	xx = x+ (camxoff + lengthdir_x(camdist,i+objCameraManager.angle))
	yy = y+(camyoff + lengthdir_y(camdist,i+objCameraManager.angle))
	draw_circle(xx,yy,2,false)
}

draw_self()