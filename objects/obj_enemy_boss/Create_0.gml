/// This enemy is a boss and will have 2 firing patterns
//Create code is the the parent file


vspeed = 2;
hp = 40;
timer = 0;
i = 0;

invul = true;

spawned = false;
// the second one is used if there are 2 different types of shots in the same loop
spawned2 = false;


//how many shots did the boss shoot
shots1 = 0;
shots2 = 0;

dir = 0;

safeguard = false;

phase1 = true;
phase2 = false;

path_started = false;
blend = image_blend; // the base color of the sprite
blendtime = 0; // how long the blending will take