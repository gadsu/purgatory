// This script when called will create a bullet, or bullets, in many directions based on what the arguments say

var x_cord, y_cord, int_x, int_y, rotate;
x_cord = argument[0];
y_cord = argument[1];
int_x = argument[2];
int_y = argument[3];
rotate = argument[4];



//The bullet will used the global varible to move in  that direction
global.int_width = int_x;
global.int_height = int_y;
global.rotation = rotate;

instance_create_layer(x_cord,y_cord,"Bullets", obj_laser);

return;