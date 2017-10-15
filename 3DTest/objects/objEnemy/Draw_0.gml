/// @description Insert description here
// You can write your code in this editor
if percent_chance(20) && patternIndex != array_length_1d(pattern)-1
{
	repeat(choose(1,2,3,4))
	{
		var w = sprite_width;
		var h = sprite_height;
	    var xx = x+(random_range(-w/3,w/3));
	    var yy = y+random_range(-h/2,-h/4);
		var eff = create_effect(xx, yy, depth+1, sprOrb, 0)
		eff.image_index = !pattern[patternIndex]
	    with eff
	    {
			var scale = random_range(.2,1);
			image_xscale = scale;
			image_yscale = scale;
	        image_alpha = random_range(0.25, 0.75);
	    }
	}  
}

//draw_circle(x,y,aggroDist,true)
//draw_text(x,y+20,"state: " + string(state) + "\canDamage: " + string(canDamage) + "\ncurrentSpeed: " + string(currentSpeed))
