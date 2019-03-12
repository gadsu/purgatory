/// @description When you explode

event_inherited(); // get the basic part of a bullet

if (global.bullet_explode == true || timer <= 0)
{
	var divide = 360/global.bullet_explode_num; // make a perfect circle
	for(var i = 0; i < global.bullet_explode_num; i++)
	{
		//show_debug_message("explode");
		enemy_bullet(obj_enemy_bullet_wonder, (divide * i), x, y);
	}
	instance_destroy();
}
if (timer <= flashing_time)
{
	flashing = true;
}
if (flashing == true)
{
	if (timer mod 3 == 0)
	{
		image_index = 1;
	}
	else 
	{
		image_index = 0;
	}
}
timer--;