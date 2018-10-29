///@description DAYS
dir_01 = 200;

for (var i = 0; i < 10; i++)
{
	enemy_bullet(oebw, dir_01 + (i * 10), bx - 60, by + 40);
}
enemy_bullet_explode(obj_exploding, 270, x, y + 40, 5, 12, 88);
enemy_bullet_explode(obj_exploding, 300, x, y + 40, 4, 12, 99);
enemy_bullet_explode(obj_exploding, 240, x, y + 40, 4, 12, 110);