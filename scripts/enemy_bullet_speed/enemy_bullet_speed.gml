// This script when called will create a bullet, or bullets, in many directions based on what the arguments say

var bullet, dir, x_cord, y_cord, spd;

bullet = argument[0];
dir = argument[1];
x_cord = argument[2];
y_cord = argument[3];
spd = argument[4];


//The bullet will used the global varible to move in  that direction
global.angle = dir;
global.bullet_speed = spd;
global.speedset = true;

instance_create_layer(x_cord,y_cord,"Bullets", bullet);

return;