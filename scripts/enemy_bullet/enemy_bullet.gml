// This script when called will create a bullet, or bullets, in many directions based on what the arguments say

var bullet, dir, x_cord, y_cord;

bullet = argument[0];
dir = argument[1];
x_cord = argument[2];
y_cord = argument[3];


//The bullet will used the global varible to move in  that direction
global.angle = dir;

instance_create_layer(x_cord,y_cord,"Bullets", bullet);

return;