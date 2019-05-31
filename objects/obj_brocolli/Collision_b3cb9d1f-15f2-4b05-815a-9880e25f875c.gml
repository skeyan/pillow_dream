
if (place_meeting(x, y, obj_susan))
{
	Broccoli_Textbox = instance_create_layer(635, 250, "text", object_txtbox);
	Broccoli_Textbox.text = myText;
	Broccoli_Textbox.name = myName;
}

have_broc = true;
scr_itempickup(1); //add to inventory
with(obj_brocolli) instance_destroy();

