///@description MD
dir_01 = 320;
for (var i = 0; i < 5; i++)
{
	global.bullet_speed = 3;
	enemy_bullet(oebw, dir_01 - (i * 16), bx + 60 - (i * 4), by + 40);
}