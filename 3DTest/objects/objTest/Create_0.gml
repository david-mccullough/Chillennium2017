/// @description Insert description here
// You can write your code in this editor
camdist = (distance_to_point(global.camx,global.camy))
camxoff = global.camx - x;
camyoff = global.camy - y;
camdir = show_debug_message(point_direction(global.camx,global.camy,x,y)-objCameraManager.angle)

x = global.camx + 2;
y = global.camy + 1;