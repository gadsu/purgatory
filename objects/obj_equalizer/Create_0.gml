/// @description Intialize Variables
image_index = 9;
image_speed = 0;
timer = 0;
index = 0;
key_pressed = 0;
if_hitboxplaced[0,0] = true;
if_hitboxplaced[0,1] = instance_create_layer(x, y + 1, "Instances", obj_equalizerhitbox);
for (var i = 1; i < 9; i++)
{
	if_hitboxplaced[i,0] = false;
}