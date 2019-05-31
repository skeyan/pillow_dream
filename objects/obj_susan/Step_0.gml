#region MOVEMENT
if(walking  == 0)
{
	image_speed = 0;
	image_index = 1;
}

if(walking == 1)
{
	image_speed = 2;
}

if(place_meeting(x, y, obj_chubbs))
	{
		room_restart();
	}
	
if(place_meeting(x, y, obj_skinny))
	{
		room_restart();
	}
#endregion

#region PILLOW PROJECTILE
//Should only be thrown in spurts of 2
//Has a "cooldown" of 5 seconds
if(room == Night_Hallway)
{
	nighthall = true;
}

//Doesn't spawn when clicking on inventory box, and only spawn in nighthall

if(nighthall && (mouse_check_button_pressed(mb_left)) && !mouse_on_inven && !global.pillowstarted)
{
	//two pillows at once with each click (but there's a cooldown)
	instance_create_layer(x + 100, y - 200, "gameplay", projectile_pillow);
	alarm[2] = room_speed / 15; //short second later, second pillow is shot
	global.pillowstarted = true;
}
#endregion

#region "POWER-UPS" AND EFFECTS 

//SPEED-RELATED EFFECTS: ----------------------------------------------------------------------------
//Broccoli's amazing nutrients speeds Suzie up for 5 seconds. A little hard to chew.
if(broccoli_clicked)
{
	broccoli_clicked = false;
	audio_play_sound(snd_powerup, 1, false);
	spd_multiplier = 2.5;
	alarm[0] = room_speed * 5; //five second effect
	//broccoliStarted = true;
}
//(Pandora's) Box makes a sense of dread overcome you. Your speed is slowed.
if(box_clicked)
{
	box_clicked = false;
	audio_play_sound(snd_powerup, 1, false);
	spd_multiplier = 0.6;
	alarm[0] = room_speed * 5; //five second effect
}

//PROJECTILE-RELATED EFFECTS: ----------------------------------------------------------------------------
//INCOMPLETE
//Remote changes the projectile to a light, quick pillow for 5 seconds.
//As well as damage and pillow speed
/*
if(remote_clicked)
{
	//remote_clicked = false;
	with(projectile_pillow)
	{
		sprite_index = spr_remote_control;
		speed = 15;
		global.damage = .5; 
	}
	alarm[3] = room_speed * 5;
	
}

//Fork changes the projectile to a heavy damaging fork for 5 seconds.



*/
//WEIRD EFFECTS MISC.: ----------------------------------------------------------------------------
//Bear enlists the help of a stuffed bear spirit. It charges down and does 1 damage to all in its path.
if(bear_clicked) //nothing needs to be reset...
{
	bear_clicked = false;	
	audio_play_sound(snd_bear, 1, false);
	instance_create_layer(100, 390, "Test", obj_guardianbear)
}



//Shovel inflicts fear in the ghosts. They flee in the opposite direction for 3 seconds.
if(shovel_clicked)
{
	shovel_clicked = false;
	audio_play_sound(snd_powerup, 1, false);
	switchdirec = true;
	alarm[4] = room_speed * 3;

}


#endregion