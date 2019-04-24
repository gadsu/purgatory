event_inherited(); //to get the Create event from the parent

blend = image_blend; // the base color of the sprite
blendtime = 0; // how long the blending will take

vspeed = 0;
hp = 123123123123;
timer = 0;
i = 0;


invul = true;

spawned = false;
// the second one is used if there are 2 different types of shots in the same loop
spawned2 = false;
event_inherited();

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

image_xscale = .13888888888;
image_yscale = .13888888888;

//Dialogue variables
dialogue_1 = true;
dialogue_2 = false;
dialogue_3 = false;
text_01 = false;

if(D0T_dead) {
	myName = "Klaus";
	myPortrait = spr_klaus_dialogue;
	myText[0] = "Well, that’s a shame.";
	myText[1] = "That girl showed promise.";
	myText[2] = "Apparently you do too, if you were able to beat her.";
	myText[3] = "Heh. Well, let’s see what you’ve got. Bring it on, kiddo.";
	mySpeaker = -1;
	mask_index = 0;
}
else {
	myName = "Klaus";
	myPortrait = spr_klaus_dialogue;
	myText[0] = "Another young upstart here to attempt to take the throne?";
	myText[1] = "I will leave everything on the stage as I always do.";
	myText[2] = "Good luck. You’re going to need it, boy.";
	mySpeaker = -1;
	mask_index = 0;
}

audio_sound_gain(Rhapsody_2001, 1, 0);