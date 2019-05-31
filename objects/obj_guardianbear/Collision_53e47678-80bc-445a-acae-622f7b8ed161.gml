with(other)
{
	if(!bear_touched)
	{
		bear_touched = true;
		image_alpha -= .2;
		hp = hp - global.damage;
	}
}

