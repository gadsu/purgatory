/// This bullet will only go in a straight line, and the direction will be based on
// the enemy_bullet script
direction = global.angle;
if (global.speedset = true)
{
	speed = global.bullet_speed;
	global.speedset = false;
}
else
{
	speed = 3;
}
made_sound = false;
hit_player = false;
hit_graze  = false;

//show_debug_message(speed);

outline = instance_create_layer(x, y, "Trails", obj_blue_trail);
with (outline)
	{
		speed = other.speed;
		direction = other.direction;
		image_angle = other.direction + 90;
	}