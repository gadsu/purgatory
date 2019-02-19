///@description Main Beat(MB), MD
enemy_bullet_speed(oebl, dir_02 + random_range(-5, 5), bx, by + 40, 6);
dir_01 = 230;
for (var i = 0; i < 10; i++)
{
	enemy_bullet(oebw, dir_01 + (i * 10), bx - 30 + (i * 4), by + 40);
}