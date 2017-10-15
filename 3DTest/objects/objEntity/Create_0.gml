/// @description init defaults
event_inherited()
canClip = false;
yDepthOrigin = sprite_height-sprite_yoffset;
sortDepth = true

isSat = true
var_saturation = 0.0;
saturation = shader_get_uniform(shSaturation, "sat");

image_color = c_white

defaultSpeed = 3;
moveSpeed = defaultSpeed;
currentSpeed = 0;
decel = .3

moveForce = 0.25;
dir = 0;

xTarget = xstart;
yTarget = ystart;

parentType = objEntity;

angle= 0;
is3D = false;
type = drawType.static;
sep = 1;

enum playerState
{
	idle,
	dash,
	bow
}

action = true;