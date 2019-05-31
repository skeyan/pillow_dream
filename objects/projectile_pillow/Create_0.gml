//set speed of projectiles for movement
speed = 9;

//hp subtractor for effect
global.damage = 1;

//resize giant pillow to make smaller
image_xscale = .15;
image_yscale = .15;

//set fixed path for projectiles for each click
x_face = obj_susan.image_xscale;

x_hold = mouse_x;
susan_x_hold = obj_susan.x + 100;


x_path = mouse_x;
y_path = mouse_y;

x_path_hold = abs(obj_susan.x + 100 - mouse_x);
y_path_hold = abs(obj_susan.y + 100 - mouse_y);
