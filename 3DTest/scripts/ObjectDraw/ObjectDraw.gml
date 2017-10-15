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


		if identity == O_ENEMYBA || identity == O_ENEMYBB
		{
			shader_set(shSaturation);
			shader_set_uniform_f(saturation, var_saturation);
		
			draw_self_3d();
			//draw_self()
			shader_reset();
			
		}
		if isSat && object_get_parent(object_index) == objPC
		{
			
			if action = 0
			draw_set_color(c_white)
			else
			draw_set_color(c_black)
			
			var scl = random_range(32,34);
			
			draw_set_alpha(.5)
			draw_circle(x,y,scl,false)
			draw_set_alpha(1)
			
			draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,image_color,image_alpha);  
			if state = playerState.dash
			{
				shader_set(shSaturation);
				shader_set_uniform_f(saturation, var_saturation);
		
				draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,image_color,image_alpha);  
				//draw_self()
				shader_reset();
			}
			
			else
				draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,image_color,image_alpha);  
			

		}
		
		else if isSat
		{
		shader_set(shSaturation);
		shader_set_uniform_f(saturation, var_saturation);

		draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,image_color,image_alpha);  
		//draw_self()
		shader_reset();

		}
		


		
		break;
}