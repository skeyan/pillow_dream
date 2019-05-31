
if (place_meeting(x, y, obj_susan))
{
	Shovel_Textbox = instance_create_layer(635, 250, "text", object_txtbox);
	Shovel_Textbox.text = myText;
	Shovel_Textbox.name = myName;
}

have_shovel = true;
scr_itempickup(6); //adds to inventory
with(obj_toy_shovel) instance_destroy();





