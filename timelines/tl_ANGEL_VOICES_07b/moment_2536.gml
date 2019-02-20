///@description RFD
dir_01 = 315;
for (var i = 0; i < 4; i++)
{
	global.bullet_speed = 3;
	enemy_bullet(oebw, dir_01 - (i * 18), bx + 20 - (i * 4), by + 40);
}