/// @description Initialize
alarm[0] = 60; // start the song a second after loading
//alarm[1] = 5;
spawned = false;
angle = 0;
num = 0;
add = -5;
timer = 0;

event_inherited(); //to get the Create event from the parent

//setting the boss' information from the parent
myName = "D.0.T.";
myPortrait = spr_boss_dialogue;
myText[0] = "Taking the title defender on first?";
myText[1] = "I gotta say, kid, that takes a lot of balls.";
myText[2] = "You think you have what it takes to take me on?";
myText[3] = "Show me what you got, and hold nothing back!";
mySpeaker = -1;