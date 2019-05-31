
if(instance_exists(obj_susan))
{
	speed = spd; //set speed
	if(!switchdirec)
	{
		
		if(x < obj_susan.x) //if ghost is left of susan or equal 
		{
			image_angle = 0;
			image_xscale = -.3;
			direction =  point_direction(x, y, obj_susan.x, obj_susan.y-200);
		}
		if(x > obj_susan.x) //if ghost is right of susan
		{
			image_angle = 0;
			image_xscale = .3;
			direction = point_direction(x, y, obj_susan.x, obj_susan.y-200);
		}
	}
	else 
	{
		if(x < obj_susan.x) //if ghost is left of susan or equal 
		{
			image_angle = 0;
			image_xscale = -.3;
			direction =  point_direction(obj_susan.x, obj_susan.y-200, x, y);
		}
		if(x > obj_susan.x) //if ghost is right of susan
		{
			image_angle = 0;
			image_xscale = .3;
			direction =  point_direction(obj_susan.x, obj_susan.y-200, x, y);
		}
		
	}
}

//Contact with projectiles and damage
if(hp <= 0)
{
	instance_destroy();
}

