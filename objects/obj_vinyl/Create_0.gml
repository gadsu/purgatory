///@description This will be shot and then returned back
// the enemy_bullet script
direction = global.angle;
current_direction = 0;
made_sound = false;
hit_player = false;
hit_graze  = false;

myspd = global.bullet_speed;

mypath = path_duplicate(path_vinyl);

path_rescale(mypath, global.x_scal, global.y_scal);
path_set_precision(mypath, 4);
path_start(mypath, myspd, path_action_stop, 0);

image_speed = 1.75;

show_debug_message(x);
show_debug_message(y);
