/// After a few seconds shoot in 16 directions around the swirl

if (timer mod 30 == 0)
{
	i++;
}
if (spawned == false && i > 3 && v < 8)
{
	
	
	
		enemy_bullet(obj_enemy_bullet_wonder, dir, x, y);
		enemy_bullet(obj_enemy_bullet_wonder, dir + 90, x, y);
		enemy_bullet(obj_enemy_bullet_wonder, dir + 180, x, y);
		enemy_bullet(obj_enemy_bullet_wonder, dir + 270, x, y);
		dir = dir + 11.25;
	v++;
	spawned = true;
	alarm[0] = 5;
}
if (blendtime > 0)
{
	blendtime--;
}
else
{
	blend = c_white;
}
timer++;
