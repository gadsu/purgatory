/// This enemy will spin around and shoot in 16 directions

vspeed = 2;

timer = 0;
hp = 3;

dir = 0;
v = 0;


i = 0;
spawned = true;
alarm[0] = 60;


blend = image_blend; // the base color of the sprite
blendtime = 0; // how long the blending will take
