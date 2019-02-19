///@description MAIN BEAT(MB) - return, MD


dir_01 = 220;
for (var i = 0; i < 4; i++)
{
	global.bullet_speed = 3;
	enemy_bullet(oebw, dir_01 + (i * 17), bx - 60 + (i * 4), by + 40);
}