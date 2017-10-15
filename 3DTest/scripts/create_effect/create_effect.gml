///create_effect(x, y, depth, sprite, animation_speed)
/*
 * Create an effect (essentially a particle)
 * with a given position, sprite & animation speed
 */
var a = instance_create_depth(argument0, argument1, argument2, objEffect);
a.sprite_index = argument3;
a.image_speed = argument4;
return a;
