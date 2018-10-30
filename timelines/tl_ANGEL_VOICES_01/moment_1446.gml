/// @description EQ2 and EQ4
enemy_bullet_explode(obj_exploding, 270, x, y + 40, .8, 10, 504)
EQ2 = instance_create_layer(512, 110, "Instances", obj_equalizer);
EQ4 = instance_create_layer(768, 110, "Instances", obj_equalizer);
//EQ8 = instance_create_layer(800, 104, "Bullets", obj_equalizer);
EQ2.image_index = 10;
EQ4.image_index = 10;