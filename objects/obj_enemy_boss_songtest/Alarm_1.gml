/// @description Bullets that rotate!
var angle = 0;
var num = 0;
if (spawned == false and num < 20 )
{
	
	enemy_bullet(obj_enemy_bullet_rotate, angle, x,y);
	enemy_bullet(obj_enemy_bullet_rotate, angle + 90, x,y);
	enemy_bullet(obj_enemy_bullet_rotate, angle + 180, x,y);
	enemy_bullet(obj_enemy_bullet_rotate, angle + 270, x,y);
	
	num++;
	spawned = true;
	alarm[2] = 5;
	
	angle--;
}