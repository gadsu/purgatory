//-----------Customise (FOR USER)
interact_key = vk_end;
detection_radius = 1000;

myPortrait		= -1;
myFont			= font_dialogue;
myName			= "None";

myPortraitTalk		= -1;
myPortraitTalk_x	= -1;
myPortraitTalk_y	= -1;
myPortraitIdle		= -1;
myPortraitIdle_x	= -1;
myPortraitIdle_y	= -1;
var player_dead = 0;
var boss_dead = 0;

keyboard_key_press(vk_end);
keyboard_key_release(vk_end);

//-----------Defaults Setup (LEAVE THIS STUFF)
reset_dialogue_defaults();