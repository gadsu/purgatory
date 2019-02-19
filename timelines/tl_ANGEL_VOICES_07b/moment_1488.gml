///@description Main Beat(MB) & Rapid Fire Drums
enemy_bullet_speed(oebl, dir_02 + random_range(-5, 5), bx, by + 40, 6);
dir_01 = 220;
for (var i = 0; i < 11; i++)
{
	enemy_bullet(oebw, dir_01 + (i * 10), bx - 35 + (i * 6), by + 40);
}
