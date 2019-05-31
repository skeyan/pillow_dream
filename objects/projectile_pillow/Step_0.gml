//If mouse click was to the right of obj susan...
if(x_hold > susan_x_hold)
{
	direction = point_direction(x, y, x_path, y_path);
	x_path += x_path_hold;
	y_path -= y_path_hold;
}

//If mouse click was to the left of obj susan...
if(x_hold <= susan_x_hold)
{
	direction = point_direction(x, y, x_path, y_path);
	x_path -= x_path_hold;
	y_path -= y_path_hold;
}


/*
if((place_meeting(x, y, obj_chubbs)) or (place_meeting(x, y, obj_skinny)))
{
	with(obj_toy_shovel) instance_destroy();
	
}
*/