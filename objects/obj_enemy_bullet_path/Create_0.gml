/// This bullet will only go in a straight line, and the direction will be based on
// the enemy_bullet script
direction = global.angle;
path_set = global.spawn;
p_speed = global.bullet_speed; // pass in the speed of the bullet

path_start(path_set, p_speed, path_action_stop, 0);
path_orientation = (270 - global.angle); // index of the path

made_sound = false;
hit_player = false;
hit_graze  = false;