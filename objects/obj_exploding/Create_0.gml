/// @description Initialize
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//speed = global.bullet_speed; // the function passes this along.
speed = global.bullet_speed;
direction = global.angle;
timer = global.timer; // how long will it take to explode
flashing_time = timer/4; // how long until it starts flashing
flashing = false;
image_speed = 0;