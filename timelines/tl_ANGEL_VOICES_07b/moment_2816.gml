///@description MAIN BEAT(MB) - return, MD

enemy_bullet(oebw, 270, bx, by + 40);
dir_01 = 320;
for (var i = 0; i < 4; i++)
{
	global.bullet_speed = 3;
	enemy_bullet(oebw, dir_01 - (i * 18), bx + 60 - (i * 4), by + 40);
}