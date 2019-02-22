/// @description
outline = instance_create_layer(x, y, "Trails", obj_yellow_trail);
with (outline)
	{
		speed = other.speed;
		direction = other.direction;
		image_angle = other.direction + 90;
	}