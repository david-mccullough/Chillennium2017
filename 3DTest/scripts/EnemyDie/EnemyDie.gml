///@param enemyid
var inst = argument0;

with inst
{
	repeat(choose(8))
	{
		var w = sprite_width;
		var h = sprite_height;
		var xx = x+(random_range(-w/3,w/3));
		var yy = y+random_range(-h/2,-h/4);
		var eff = create_effect(xx, yy, depth+1, sprOrb, 0)
		eff.image_index = pattern[patternIndex-1]
		with eff
		{
			spread = true;
			spd = 1;
			var scale = random_range(.5,1.2);
			image_xscale = scale;
			image_yscale = scale;
		    image_alpha = random_range(0.25, 0.75);
		}
	}
}
//TODO puffs
instance_destroy(inst);