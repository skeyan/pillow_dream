
if (place_meeting(x, y, obj_susan))
{
	Bear_Textbox = instance_create_layer(635, 250, "text", object_txtbox);
	Bear_Textbox.text = myText;
	Bear_Textbox.name = myName;
}

have_bear = true;
scr_itempickup(4); //adds to inventory
with(obj_bear) instance_destroy();