//scr_itemdrop_slot(slot); 

if(global.inventory[argument0] != -1) //something's in it
{
	global.inventory[argument0] = -1;
	return 1;
}
return 0;