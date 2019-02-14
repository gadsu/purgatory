///@description EQ4, WARNING EQ3, DAYS

area_warning(room_width/2 - 16, 111, 110/3.5, 600, 44, 0);
dir_01 = 200;
for (var i = 0; i < 10; i++)
{
	enemy_bullet(oebw, dir_01 + (i * 10), bx - 60, by + 40);
	enemy_bullet(oeba, (dir_01 - 5) + (i * 10), bx - 60, by + 40);
}
EQ4.image_index = 10;
