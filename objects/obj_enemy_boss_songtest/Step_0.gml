timer++
if (spawned == false and num < 30 and timer > 106)
{
	
	
	scr_triangle_bullets(angle, x, y, 20, 50, .15); //.002
	
	
	
	//enemy_bullet(obj_enemy_bullet_acel ,270, x-20, y);
	//enemy_bullet(obj_enemy_bullet_dec, 270, x+20, y);
//	enemy_bullet(obj_enemy_bullet_rotate, angle + 8, x,y);
//	enemy_bullet(obj_enemy_bullet_rotate, angle + 12, x,y);
	
//	enemy_bullet(obj_enemy_bullet_rotate, angle + 90, x,y);
//	enemy_bullet(obj_enemy_bullet_rotate, angle + 94, x,y);
//	enemy_bullet(obj_enemy_bullet_rotate, angle + 98, x,y);
//	enemy_bullet(obj_enemy_bullet_rotate, angle + 102, x,y);
		
//	enemy_bullet(obj_enemy_bullet_rotate, angle + 180, x,y);
//	enemy_bullet(obj_enemy_bullet_rotate, angle + 184, x,y);
//	enemy_bullet(obj_enemy_bullet_rotate, angle + 188, x,y);
//	enemy_bullet(obj_enemy_bullet_rotate, angle + 192, x,y);
	
//	enemy_bullet(obj_enemy_bullet_rotate, angle + 270, x,y);
//	enemy_bullet(obj_enemy_bullet_rotate, angle + 274, x,y);
//	enemy_bullet(obj_enemy_bullet_rotate, angle + 278, x,y);
//	enemy_bullet(obj_enemy_bullet_rotate, angle + 282, x,y);
	
	num++;
	spawned = true;
	alarm[2] = 40;

	angle = angle + pi/2
	
	
}