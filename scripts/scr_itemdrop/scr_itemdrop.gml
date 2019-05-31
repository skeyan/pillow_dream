
for (i = 0; i < maxItems; i++)
{
	if (global.inventory[i] == argument0) //if slot i contains that item
	{
		global.inventory[i] = -1; //set to empty again
		return(1); //ends the script here if above is true
	}
}

//if slots are all full
return(0);