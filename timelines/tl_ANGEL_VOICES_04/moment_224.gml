//enemy_bullet(oebw, 0, bx, by + 40);
//enemy_bullet(oebw, 90, bx, by + 40);
//enemy_bullet(oebw, 180, bx, by + 40);
//enemy_bullet(oebw, 270, bx, by + 40);

if(health >= 0)
{
	enemy_bullet(oeba, point_direction(x, y, obj_player.x, obj_player.y) + 15, bx, by + 40);
	enemy_bullet(oeba, point_direction(x, y, obj_player.x, obj_player.y), bx, by + 40);
	enemy_bullet(oeba, point_direction(x, y, obj_player.x, obj_player.y) - 15, bx, by + 40);
}