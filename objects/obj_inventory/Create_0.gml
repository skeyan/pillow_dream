//Make sure it's visible on top of everything else except text boxes
depth = -5000;


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


//Checks if inventory is being shown at screen at any time
globalvar showInv; 
showInv = true;
globalvar maxItems; //total item slots
maxItems = 7;

//For projectile-inventory interaction
globalvar mouse_on_inven;
mouse_on_inven = false; //mouse isn't on inventory at the start

//Inventory array set-up as empty slots
for(i = 0; i < maxItems; i++)
{
	global.inventory[i] = -1;
	button[i] = instance_create_depth(0, 0, -11000, obj_invbutton);
	button[i].slot = i; //the button knows which slot of the inventory it is
}

//Pillow is always in inventory's first slot because Suzie carries it around
global.inventory[0] = 0;



