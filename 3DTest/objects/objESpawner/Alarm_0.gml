/// @description Insert description here
// You can write your code in this editor
var temp = instance_create_depth(x,y,0,IdentityGetObject(identity))
temp.identity = identity
if identity == O_ENEMYBA || identity == O_ENEMYBB
{
	temp.sprite_index = sprEBossB
	
	
}
show_debug_message("created: " + string(identity))

repeat(choose(6,7,8))
{
	var w = sprite_width;
	var h = sprite_height;
	var xx = x+(random_range(-w/3,w/3));
	var yy = y+random_range(-h/2,-h/4);
	var eff = create_effect(xx, yy, depth+1, sprOrb, 0)
	eff.image_index = !temp.pattern[temp.patternIndex]
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

instance_destroy()

