/// @description Initialize
//alarm[0] = 60; // start the song a second after loading
//alarm[1] = 5;
spawned = false;
global.spawnedlights =false;
angle = 0;
num = 0;
add = -5;
timer = 0;

event_inherited(); //to get the Create event from the parent

blend = image_blend; // the base color of the sprite
blendtime = 0; // how long the blending will take

dialog_start_started = false;
safeguard = false;

//setting the boss' information from the parent
if(Klaus_dead) {
	//show_debug_message("klaus ded");
	reset_dialogue_defaults();
	myName = "D.0.T.";
	myPortrait = spr_dot_dialogue;
	myText[0] = "Klaus has quite the reputation for breaking the weak ones, and yet here you are.";
	myText[1] = "Guess you’re stronger than I thought.";
	myText[2] = "Just don’t waste my time.";
	mySpeaker = -1;
}
else if(MOB_dead) {
	reset_dialogue_defaults();
	myName = "D.0.T.";
	myPortrait = spr_dot_dialogue;
	myText[0] = "Aww, did the angsty baby give you a tough time?";
	myText[1] = "Wait, he wasn’t ready? Oh, that’s quite hilarious!";
	myText[2] = "Don’t get too comfortable, though. It only gets harder from here.";
	mySpeaker = -1;
}
else if(MOB_dead && Klaus_dead) {
	reset_dialogue_defaults();
	myName = "D.0.T.";
	myPortrait = spr_dot_dialogue;
	myText[0] = "And the reigning champion meets her foe.";
	myText[1] = "How nice to finally meet you.";
	myText[2] = "And now, I have to beat you into the ground.";
	mySpeaker = -1;
}
else {
	//show_debug_message("klaus lives");
	myName = "D.0.T.";
	myPortrait = spr_dot_dialogue;
	myText[0] = "So, the reigning champion meets her foe.";
	myText[1] = "I gotta say, that takes some guts.";
	myText[2] = "Now... I truly am sorry about this... but I gotta beat you into the ground.";
	mySpeaker = -1;
}


// Flag Variables
dialogue_1 = true;
text_01 = false;
dialogue_2 = false;
dialogue_3 = false;


timer = 0
//Used for old HP system (WIP)(Outdated)
//Currenty (1/298/2019) needs to be replaced by favor system
hp = 10000;
image_xscale = .13888888888;
image_yscale = .13888888888;

//Enables music
audio_sound_gain(Virtual_Self___ANGEL_VOICES_CUT, 1, 0);