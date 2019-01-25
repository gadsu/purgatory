///@description MD
//enemy_bullet(oebw, 270, bx - 49, by + 40);

dir_01 = 270;
for (var i = 0; i < 6; i++)
{
	enemy_bullet(oebw, dir_01 + (i * 14), bx - 30 + (i * 4), by + 40);
}