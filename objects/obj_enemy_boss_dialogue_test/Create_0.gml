event_inherited(); //to get the Create event from the parent

blend = image_blend; // the base color of the sprite
blendtime = 0; // how long the blending will take

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

//setting the boss' information from the parent
myName = "Test Boss";
myPortrait = spr_boss;
myText[0] = "Prepare to face my wrath!";
mySpeaker = -1;