//Don't continue into the end screen
if(room == Game_Over)
{
	instance_destroy();
}

var item = global.inventory[slot];
var click = mouse_check_button_pressed(mb_left);


//placed here for draw order
//If the item slot is not empty, draw the item into that slot:
if(room == Instructions_2)
{
	showInvButtons = false;
}
else
{
	showInvButtons = true;
}

if(item != -1 && showInvButtons)
{
	draw_sprite(spr_items, item, x + 10, y + 10);
}

#region Checking Rooms
//Room checks:
var inhouse = false;
var innight = false;
if(room == House_Rooms)
{
	var inhouse = true;
}
else
{
	inhouse = false;
}

if(room == Night_Hallway)
{
	var innight = true;
}
else
{
	innight = false;
}
#endregion

#region //Highlighting the boxes
//The GUI coordinates are NOT THE SAME as regular coordinates, this applies to mouse as well
guimouse_x = device_mouse_x_to_gui(0);
guimouse_y = device_mouse_y_to_gui(0);

if(showInvButtons && (guimouse_x < (x+150) && (guimouse_x > x)) && ((guimouse_y > y) && (guimouse_y < (y+150))))
{	
	//Highlights screen when selected
	draw_set_color(c_white);
	draw_set_alpha(.6); 
	draw_rectangle(x, y, x+150, y+150, false);
	draw_set_alpha(1); //reset alpha
	
#endregion
	
	#region //Descriptions on Hover
	//Use ITEM instead of SLOT because it refers to the contents rather than the position
	//Pillow (is always there and can't be removed):
	if(slot == 0) 
	{
		if(inhouse)
		{
			draw_sprite(spr_pillow_house, 0, guimouse_x, guimouse_y);
		}
		if(innight)
		{
			draw_sprite(spr_pillow_night, 0, guimouse_x, guimouse_y);
		}
	}
	//Broccoli
	if(item == 1 && have_broc)
	{
		if(inhouse)
		{
			draw_sprite(spr_broccoli_house, 0, guimouse_x, guimouse_y);
		}
		if(innight)
		{
			draw_sprite(spr_broccoli_night, 0, guimouse_x, guimouse_y);
		}
	}	
	//Spork/fork
	if(item == 2 && have_fork)
	{
		if(inhouse)
		{
			draw_sprite(spr_spork_house, 0, guimouse_x, guimouse_y);
		}
		if(innight)
		{
			draw_sprite(spr_spork_unf, 0, guimouse_x, guimouse_y);
		}
	}
	//Black box
	if(item == 3 && have_box)
	{
		if(inhouse)
		{
			draw_sprite(spr_box_house, 0, guimouse_x, guimouse_y);
		}
		if(innight)
		{
			draw_sprite(spr_box_night, 0, guimouse_x, guimouse_y);
		}
	}
	//Decapitated teddy bear
	if(item == 4 && have_bear)
	{
		if(inhouse)
		{
			draw_sprite(spr_bear_house, 0, guimouse_x, guimouse_y);
		}
		if(innight)
		{
			draw_sprite(spr_bear_night, 0, guimouse_x, guimouse_y);
		}
	}
	//Remote
	if(item == 5 && have_remote)
	{
		if(inhouse)
		{
			draw_sprite(spr_remote_house, 0, guimouse_x, guimouse_y);
		}
		if(innight)
		{
			draw_sprite(spr_remote_unf, 0, guimouse_x, guimouse_y);
		}
	}
	//Toy shovel
	if(item == 6 && have_shovel)
	{
		if(inhouse)
		{
			draw_sprite(spr_shovel_house, 0, guimouse_x, guimouse_y);
		}
		if(innight)
		{
			draw_sprite(spr_shovel_night, 0, guimouse_x, guimouse_y);
		}
	}
	
	#endregion
	
	
	#region //Left-click Interaction
	
	if(click && room == Night_Hallway) //if left click is pressed
	{
		//If they click on the pillow slot, don't drop it from the inventory!
		//For all other items, do power-up and delete from inventory.
		//They'll probably be able to do all the power-ups at once if they choose to.
		
		//If item slot is full and NOT the pillow, drop the item:
		//fork and remove currently unfinished
		if(item != -1 && (slot != 0) && (slot != 2) && (slot != 5))
		{
			scr_itemdrop_slot(slot);
		}
		
		//If item is broccoli and is clicked on in the Night Hall:
		//Power-ups/effects are located in obj_susan
		if(item == 1)
		{
			broccoli_clicked = true;
		}
		else
		{
			broccoli_clicked = false;
		}
		if(item == 2)
		{
			spork_clicked = true;
		}
		else
		{
			spork_clicked = false;
		}
		if(item == 3)
		{
			box_clicked = true;
		}
		else
		{
			spork_clicked = false;
		}
		if(item == 4)
		{
			bear_clicked = true;
		}
		else
		{
			bear_clicked = false;
		}
		if(item == 5)
		{
			remote_clicked = true;
		}
		else
		{
			remote_clicked = false;
		}
		if(item == 6)
		{
			shovel_clicked = true;
		}
		else
		{
			shovel_clicked = false;
		}
		
		//mouseItem = item;
	}
	#endregion
}

















