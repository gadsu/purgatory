///@description RFD
//enemy_bullet(oebw, 270, bx - 49, by + 40);

dir_01 = 225;
for (var i = 0; i < 5; i++)
{
	enemy_bullet(oebw, dir_01 + (i * 8), bx - 40 + (i * 4), by + 40);
}