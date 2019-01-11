///@description RFD
//enemy_bullet(oebw, 270, bx - 49, by + 40);
dir_01 = 270;
for (var i = 0; i < 5; i++)
{
	enemy_bullet(oebw, dir_01 + (i * 10), bx + (i * 8), by + 40);
}