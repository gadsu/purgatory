///@description MAIN BEAT(MB), MD

enemy_bullet_vinyl(120, 1075, 270, (bx - 193) + 40 , by+100, 5);
dir_01 = 220;
for (var i = 0; i < 4; i++)
{
	global.bullet_speed = 3;
	enemy_bullet(oebw, dir_01 + (i * 18), bx - 60 + (i * 4), by + 40);
}