//part of projectile
//waits a tiny bit before shooting second pillow in one click
instance_create_layer(x + 100, y - 200, "gameplay", projectile_pillow);

//activates cooldarm alarm 
alarm[1] = room_speed/2; //half second cooldown
