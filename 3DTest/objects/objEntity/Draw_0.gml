/// @description


draw_circle(xTarget,yTarget,4,false)
draw_self()

if currentSpeed != 0
draw_line_width(x,y,x+lengthdir_x(32,dir),y+lengthdir_y(32,dir),2)

if isSat
{
shader_set(shSaturation);
shader_set_uniform_f(saturation, var_saturation);

draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);  

shader_reset();
}
