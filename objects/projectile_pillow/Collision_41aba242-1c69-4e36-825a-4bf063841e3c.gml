//Causes the ghost's hp to decrease by 1 with each hit of pillow projectile.
with(other)
{
	image_alpha -= .2;
	hp = hp - global.damage;
}

//When pillow projectile collides with the ghost, destroy the pillow (only one-hit use).
instance_destroy();