/*
	Inventory Items (from sprite frames)
	0 - Pillow
	1 - Frozen Broccoli
	2 - Fork
	3 - Black Box
	4 - Decapitated Teddy Bear
	5 - Remote Control
	6 - Toy Shovel
*/
audio_play_sound(snd_pickedup, 1, false);



for (i = 0; i < maxItems; i++)
{
	if (global.inventory[i] == -1) //if slot i is empty:
	{
		global.inventory[i] = argument0; //whatever is sent to the script	
		return(1); //ends the script here if above is true
	}
}

//if slots are all full
return(0);