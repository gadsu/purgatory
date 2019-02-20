///@description MD

dir_01 = 235;
for (var i = 0; i < 4; i++)
{
	global.bullet_speed = 3;
	enemy_bullet(oebw, dir_01 + (i * 18), bx - 30 + (i * 4), by + 40);
}