
if(keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left))
{
	if (page + 1 < array_length_1d(text))
	{
		page += 1;
		charCount = 0;
	} else
	{
		instance_destroy();
	}
}