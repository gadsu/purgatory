// When this is created follow a path or do something else

blend = c_white; // the base color of the sprite
blendtime = 0; // how long the blending will take
hp = 3;
shot = false;

path_set = global.spawn;

path_start(path_set, 2.5, path_action_stop, 0);
	

