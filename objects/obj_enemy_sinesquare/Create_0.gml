/// @description Intialize

direction = global.angle;
speed =  2;//global.bullet_speed;

current_spd = speed;
current_dir = direction;

timer = 0;
length = 90; //how far it wil go
arc_angle = 60; // what is the angle of the arc

dir_change = arc_angle/43;

straight = true;
curve = false;


i = 0; // i is an interator for direction changes
j = 0; //how many times did the the thing run.

