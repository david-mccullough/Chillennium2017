

global.dummy = instance_create_depth(x-96,y,0,objESingleB)
global.dummy.desiredTarget = noone;
global.dummy.target =noone;

with global.dummy
{
	repeat(choose(6,7,8))
	{
		var w = sprite_width;
		var h = sprite_height;
		var xx = x+(random_range(-w/3,w/3));
		var yy = y+random_range(-h/2,-h/4);
		var eff = create_effect(xx, yy, depth+1, sprOrb, 0)
		eff.image_index = pattern[patternIndex]
		with eff
		{
			spread = true;
			spd = 2;
			var scale = random_range(.2,1);
			image_xscale = scale;
			image_yscale = scale;
		    image_alpha = random_range(0.25, 0.75);
		}
	}
}
