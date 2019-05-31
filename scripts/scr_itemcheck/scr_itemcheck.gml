
for (i = 0; i < maxItems; i++)
{
	if (global.inventory[i] == argument0) //if slot i contains that item
	{
		//just checking to see if item is there
		return(1); //ends the script here if above is true (says we found it!)
	}
}

//if item is not found in inventory:
return(0);