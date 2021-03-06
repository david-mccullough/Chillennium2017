/// @description Insert description here
// You can write your code in this editor
if global.levelEditorEnabled
{
	exit;
}

if !canDraw exit;

var pct;
if state == playerState.dash then pct = 60
else
pct = 5
if percent_chance(pct)
{
	repeat(choose(2,3,4))
	{
		var w = sprite_width;
		var h = sprite_height;
	    var xx = x+(random_range(-w/3,w/3));
	    var yy = y+random_range(-h/3,-h/3);
		var eff = create_effect(xx, yy, depth+1, sprOrb, 0)
		eff.image_index = action
	    with eff
	    {
			var scale = random_range(.2,.8);
			image_xscale = scale;
			image_yscale = scale;
	        image_alpha = random_range(0.25, 0.75);
	    }
	}  
}

//draw_text(x,y+20,"state: " + string(state) + "\dir: " + string(dir) + "\nx: " + string(xTarget))