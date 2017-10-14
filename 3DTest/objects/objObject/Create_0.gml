/// @description 
editState = editorState.idle;
drawColor = c_white;
//get identity from object name
//is this how it should work? maybe just use macros
//string_delete(object_get_name(object_index),1,3);
identity = O_DCRATE

//required for depth system
is3D = false;
myDepth = 0;
canDraw = true;
sortDepth = true;
yDepthOrigin = sprite_height-sprite_yoffset;
angle = 0;
scale = 1;
canClip = false;

parentType = objObject;

camdist = (distance_to_point(global.camx,global.camy))
camxoff = global.camx - x;
camyoff = global.camy - y;
camdir = show_debug_message(point_direction(global.camx,global.camy,x,y)-objCameraManager.angle)