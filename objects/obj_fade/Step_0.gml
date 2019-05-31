//Game is set to 60 frames per second
//Haven't faded out yet, in the process of fading out.

if (fade_out)
{
  current_alpha += (1 / room_speed);
  if (current_alpha >= 1) // the moment it equals 1 (should take 1 second)
  {
    fade_out = false; // so that we're fading in the next step; don't keep fading in
    if room_exists(room_next(room)) room_goto_next(); // make sure that obj_fade is persistent for this
	if(!(audio_is_playing(snd_Game_Over)) && room == Game_Over) // so no audio overlapping step-event
	{
		audio_play_sound(snd_Game_Over, 1, false);
	}
	current_alpha -= (1 / room_speed);
  }
}

// Already faded out, time to fade in.
else if (!fade_out && current_alpha > 0) {
  current_alpha -= (1 / room_speed);
  if (current_alpha <= 0) // the moment it equals 0 (should take 1 second as well)
  {
    instance_destroy(); // self destruct
  }
}