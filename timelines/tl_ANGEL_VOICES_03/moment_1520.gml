///@description MD
//enemy_bullet(oebw, 270, bx - 49, by + 40);
dir_01 = 340;

for (var i = 0; i < 5; i++)
{
	enemy_bullet(oebw, dir_01 - (i * 10), bx + 60 -(i * 8), by + 40);
}