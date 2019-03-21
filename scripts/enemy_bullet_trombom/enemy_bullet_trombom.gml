// This script when called will create a bullet, or bullets, in many directions based on what the arguments say

var bullet, dir, x_cord, y_cord;

bullet = argument[0];
dir = argument[1];
x_cord = argument[2];
y_cord = argument[3];


//The bullet will used the global varible to move in  that direction
global.angle = dir;

instance_create_layer(x_cord + lengthdir_x(sqrt(244), dir + 0),y_cord + lengthdir_y(sqrt(244), dir + 0),"Bullets", bullet);
instance_create_layer(x_cord + lengthdir_x(sqrt(244), dir + 5),y_cord + lengthdir_y(sqrt(244), dir + 5),"Bullets", bullet);
instance_create_layer(x_cord + lengthdir_x(sqrt(244), dir + 10),y_cord + lengthdir_y(sqrt(244), dir + 10),"Bullets", bullet);

enemy_bullet_path(bullet,dir, path_violin, x_cord, y_cord);

return;