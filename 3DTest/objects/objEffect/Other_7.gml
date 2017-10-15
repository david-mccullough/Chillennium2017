///Destroy
if (!loop)
{
    hp--;
    if (hp <= 0 or image_xscale < 0.2)
    {
        instance_destroy();
    }
}


