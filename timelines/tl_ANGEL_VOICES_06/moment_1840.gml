///@description EQ1 & EQ5 also SOME
EQ1.image_index = 10;
EQ5.image_index = 10;

dir_01 = 340;

for (var i = 0; i < 10; i++)
{
	enemy_bullet(oebw, dir_01 - (i * 10), bx + 60, by + 40);
	enemy_bullet(oeba, (dir_01 - 5) - (i * 10), bx + 60, by + 40);
}