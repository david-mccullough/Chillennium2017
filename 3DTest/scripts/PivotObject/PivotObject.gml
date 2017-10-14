///@param obj
///@param vecpos
///@param angle

var inst = argument0;
var vecpos = argument1;

//get mag
var mag = sqrt(sqr(global.camx-inst.x)+sqr(global.camy-inst.y))///vect2_length(vecpos);
show_debug_message("mag: " + string(mag))

//normalize pos
vecpos = vect2_normalize(vecpos)

//show_debug_message(string(id) + " normal vec = [ " + string(vecpos[0]) + " , " + string(vecpos[1]) + " ]")  

//add new angle to my angle;
var theta = point_direction(global.camx,global.camy,inst.x,inst.y)
var theta = argument2 + theta;

vecpos[0] = cos(theta);
vecpos[1] = sin(theta);

show_debug_message("x: " +string(vecpos[0]))

vecpos = vect2_scale(vecpos, mag);

show_debug_message(string(id) + " new vec = [ " + string(vecpos[0]) + " , " + string(vecpos[1]) + " ]")  

inst.x = global.camx + vecpos[0]
inst.y = global.camy + vecpos[1]
