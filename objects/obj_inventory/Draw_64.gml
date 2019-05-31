if(room == Game_Over)
{
	instance_destroy();
}

if(room == Instructions_2)
{
	showInv = false;
}
else
{
	showInv = true;
}

if(showInv && room != Game_Over) //Set to true in create event
{ 
	var x1, x2, y1, y2;
	x1 = view_xview[0] + (view_wview[0]/10); //where the camera is
	x2 = x1 + (view_wview[0] / 10 * 8); //how wide viewport is
	y1 = view_yview[0];
	y2 = y1 + 200; 
	
	
	//Draw inventory
	draw_set_color(c_black);
	draw_set_alpha(0.8);
	draw_rectangle(x1, y1, x2, y2, false);
	draw_set_alpha(1); //reset
	
	//If mouse is in inventory box, set mouse_in_inev as true to avoid projectiles misfiring.
	if(point_in_rectangle(mouse_x, mouse_y, x1, y1, x2, y2))
	{
		mouse_on_inven = true;
	}
	else
	{
		mouse_on_inven = false;
	}
	
	//Draw slots in inventory and any items in them
	for(i = 0; i < maxItems; i++)
	{
		//Takes whatever slot * 40 to add to x-cor (like an offset)
		//Draws the boxes:
		var ix = x1 + 45 + (i * 160);
		var iy = y2-175;
		draw_sprite(spr_border, 0, ix, iy);
		
		
		button[i].x = ix;
		button[i].y = iy;
	
		
		//if(global.inventory[i] != -1) //if it's not empty
		//{
			
			//Draws items collected in the slots:
			//draw_sprite(spr_items,global.inventory[i], x1 + 55 + (i * 160), y2-165);
		//}
	
	}
}














