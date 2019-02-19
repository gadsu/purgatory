///@description MAIN BEAT(MB) - return, MD



//enemy_bullet(oebw, 270, bx - 49, by + 40);
dir_01 = 220;
for (var i = 0; i < 7; i++)
{
	global.bullet_speed = 3;
	enemy_bullet(oebw, dir_01 + (i * 13), bx - 60 + (i * 4), by + 40);
}