//TP_01.image_angle += 2;
//TP_02.image_angle -= 2;

show_debug_message("Violin Created");

VL_01 = instance_create_layer(room_width/2 - 150, 75, "Instances", obj_violin);
VL_02 = instance_create_layer(room_width/2 + 150, 75, "Instances", obj_violin);
VL_02.image_xscale = -1;

enemy_bullet_path(oebp, 270, path_violin, VL_01.x, VL_01.y, 4);
enemy_bullet_path(oebp, 270, path_violin, VL_02.x, VL_02.y, 4);