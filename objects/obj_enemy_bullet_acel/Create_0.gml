/// This bullet will only go in a straight line, and acelerate to a certain level
// the enemy_bullet script
direction = global.angle;
speed = 2;
made_sound = false;
hit_player = false;
hit_graze  = false;
speed_change = 0; // what will be added to the speed variable
timer = 0;

outline = instance_create_layer(x, y, "Trails", obj_yellow_trail);
with (outline)
	{
		speed = other.speed;
		direction = other.direction;
		image_angle = other.direction + 90;
	}