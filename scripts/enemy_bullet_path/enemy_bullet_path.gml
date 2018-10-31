// This script when called will create a bullet, or bullets, in many directions based on what the arguments say

var bullet, dir, path, x_cord, y_cord, spd;

bullet = argument[0];
dir = argument[1];
path = argument[2];
x_cord = argument[3];
y_cord = argument[4];
spd = argument[5];


//The bullet will used the global varible to move in  that direction
global.angle = dir;
global.bullet_speed = spd;
global.spawn = path;

instance_create_layer(x_cord,y_cord,"Bullets", bullet);

return;