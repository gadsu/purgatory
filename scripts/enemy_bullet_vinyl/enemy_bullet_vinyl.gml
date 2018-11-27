// This script when called will create a bullet, or bullets, in many directions based on what the arguments say



var x_scal, y_scal, dir, x_cord, y_cord, spd;

x_scal = argument[0];
y_scal = argument[1];
dir = argument[2];
x_cord = argument[3];
y_cord = argument[4];
spd = argument[5];


//The bullet will used the global varible to move in  that direction
global.angle = dir;
global.bullet_speed = spd;
global.x_scal = x_scal;
global.y_scal = y_scal;

instance_create_layer(x_cord,y_cord,"Bullets", obj_vinyl);

return;