/// When shot by an enemy, head to where the player is
direction = global.angle;
speed = global.bullet_speed;
made_sound = false;
hit_player = false;
hit_graze  = false;
image_angle = point_direction(x,y, obj_player.x, obj_player.y) + 90;
