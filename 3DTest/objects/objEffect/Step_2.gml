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

if floatUp
{
	y-=.2
	image_xscale*=.98;
	image_yscale*=.98;
}





