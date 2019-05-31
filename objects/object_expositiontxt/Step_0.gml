
if(keyboard_check_pressed(vk_enter) or (mouse_check_button_pressed(mb_left)))
{
	if(epage + 1 = array_length_1d(etext))
	{
		finished = true;
	}
	else if (epage + 1 < array_length_1d(etext))
	{
		epage += 1;
		echarCount = 0;
	} 
	else
	{
		instance_destroy();
	}
}


if(finished)
{
	room_goto_next();
}