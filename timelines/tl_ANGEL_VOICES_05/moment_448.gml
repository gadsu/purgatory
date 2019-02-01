///@description SAY?

var distance_01 = bx - L3.x;
var distance_02 = bx - L4.x;

enemy_bullet_vinyl(-distance_01 - 31, 1075, 270, bx - 175, by + 150, 6);
enemy_bullet_vinyl(-(-distance_01 - 32), 1075, 270, bx - 205, by + 150, 6);

enemy_bullet_vinyl(-distance_02 - 20, 1075, 270, bx - 172, by + 150, 6);
enemy_bullet_vinyl(-(-distance_02 - 20), 1075, 270, bx - 210, by + 150, 6);



enemy_bullet(oebw, random_range(200, 340),bx - random_range(-100, 100), by + 40);