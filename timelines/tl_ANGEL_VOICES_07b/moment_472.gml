///@description RFD

dir_01 = 235;
for (var i = 0; i < 3; i++)
{
	global.bullet_speed = 3;
	enemy_bullet(oebw, dir_01 + (i * 18), bx - 15 + (i * 4), by + 40);
}
