
if (place_meeting(x, y, obj_susan))
{
	Spork_Textbox = instance_create_layer(635, 250, "text", object_txtbox);
	Spork_Textbox.text = myText;
	Spork_Textbox.name = myName;
}

have_fork = true;
scr_itempickup(2); //add to inventory
with(obj_spork) instance_destroy();