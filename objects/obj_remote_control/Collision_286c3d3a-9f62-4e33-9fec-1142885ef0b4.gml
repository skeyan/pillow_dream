
if (place_meeting(x, y, obj_susan))
{
	Remote_Textbox = instance_create_layer(635, 250, "text", object_txtbox);
	Remote_Textbox.text = myText;
	Remote_Textbox.name = myName;
}

have_remote = true;
scr_itempickup(5); //adds to inventory
with(obj_remote_control) instance_destroy();