
if (place_meeting(x, y, obj_susan))
{
	Box_Textbox = instance_create_layer(635, 250, "text", object_txtbox);
	Box_Textbox.text = myText;
	Box_Textbox.name = myName;
}

have_box = true;
scr_itempickup(3); //adds to inventory
with(obj_black_box) instance_destroy();