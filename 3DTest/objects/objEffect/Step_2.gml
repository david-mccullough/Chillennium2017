///Delay & stick to objects
if (delay > 0)
{
    delay--;
    visible = false;
    image_index = 0;
    if (delay == 0)
    {
        visible = true;
    }
}
if (stickTo != noone)
if (instance_exists(stickTo))
{
    x = stickTo.x;
    y = stickTo.y;
    image_xscale = stickTo.image_xscale*stickTo.facing;
    image_yscale = stickTo.image_yscale;
}
else
{
    stickTo = noone;
}

image_xscale*=.98;
image_yscale*=.98;
if floatUp
{
	y-=.2

}
if spread
{
	x+=lengthdir_y(spd,dir)
	y+=lengthdir_y(spd,dir)
	spd = smooth_approach(spd,.2,.1);
}


if (hp <= 0 or image_xscale < 0.1)
{
    instance_destroy();
}


