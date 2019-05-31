
//inventory detection
if(room == "Night_Hallway"){
	nighthall = true;
}

if(mouse_check_button_pressed(mb_left) && nighthall)
{
	global.broccoli_clicked = true;
	instance_destroy();
}

