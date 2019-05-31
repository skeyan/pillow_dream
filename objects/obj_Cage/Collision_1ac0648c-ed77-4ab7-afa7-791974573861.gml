//room_goto_next();

//Trying to implement a fading transition:
instance_destroy(obj_inventory);
instance_destroy(obj_invbutton);
audio_stop_all();
instance_create_depth(0,0,-10000,obj_fade); // x and y can be anything


