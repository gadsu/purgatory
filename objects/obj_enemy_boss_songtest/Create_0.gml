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
myName = "D.0.T.";
myPortrait = spr_dot_dialogue;
myText[0] = "So, the reigning champion meets her foe.";
myText[1] = "I gotta say, that takes some guts.";
myText[2] = "Now... I truly am sorry about this... but I gotta beat you into the ground.";
mySpeaker = -1;


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
