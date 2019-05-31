//scr_itempickup_slot(item,slot);

if(global.inventory[argument1] == -1) //if that slot is empty
{
	global.inventory[argument1] = argument0;
	return(1);
}
return 0;