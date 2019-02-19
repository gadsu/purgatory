///@description MD
//enemy_bullet(oebw, 270, bx - 49, by + 40);

dir_01 = 270;
for (var i = 0; i < 6; i++)
{
	global.bullet_speed = 3;
	enemy_bullet(oebw, dir_01 + (i * 14), bx + (i * 4), by + 40);
}