///@description Main Beat(MB) & Rapid Fire Drums
enemy_bullet_speed(oebl, dir_02 + random_range(-5, 5), bx, by + 40, 6);

dir_01 = 220;
for (var i = 0; i < 3; i++)
{
	global.bullet_speed = 3;
	enemy_bullet(oebw, dir_01 + (i * 18), bx - 60 + (i * 4), by + 40);
}

