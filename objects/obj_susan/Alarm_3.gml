//counts for 5 seconds
//resets projectile_pillow sprite to blue pillow
with(projectile_pillow)
{
	sprite_index = spr_throwable_pillow;
	speed = 9;
	global.damage = 1;
}

remote_clicked = false;