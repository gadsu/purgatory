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
timer--;