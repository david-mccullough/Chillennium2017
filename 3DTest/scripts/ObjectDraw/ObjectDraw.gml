//determine if 2d or 3d

switch (parentType)
{
	case objObject:

		image_angle = angle+objCameraManager.angle;
		//3d
		if is3D
		{
			draw_self_3d();
		}
		else
		{
			draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,angle,c_white,image_alpha);
		}
		
		break;
		
	case objEntity:

		if isSat
		{
		shader_set(shSaturation);
		shader_set_uniform_f(saturation, var_saturation);

		draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,image_color,image_alpha);  
		//draw_self()
		shader_reset();

		}
		


		
		break;
}