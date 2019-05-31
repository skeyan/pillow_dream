/// @description Display Properties

ideal_width = 0;
ideal_height = 1400;

aspect_ratio = display_get_width()/display_get_height();

//ideal_height = round(ideal_width/aspect_ratio);
ideal_width = round(ideal_height*aspect_ratio);

//Check for odd numbers
if(ideal_width & 1)
{
	ideal_width++;
}


surface_resize(application_surface,ideal_width,ideal_height);
window_set_size(ideal_width,ideal_height);

window_center();
room_goto_next();

