//-----------Customise (FOR USER)
interact_key = vk_enter;
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
player_dead = 0;
boss_dead = false;
globalvar dialogue_start;
dialogue_start = true;

//dialogue flags
globalvar dialogue_1;
dialogue_1 = true;
globalvar dialogue_2;
dialogue_2 = false;
globalvar dialogue_3;
dialogue_3 = false;
globalvar text_01;
text_01 = false;
Klaus_dead = false;
D0T_dead = false;
dialogue_real_start = true;

keyboard_key_press(vk_enter);
keyboard_key_release(vk_enter);

//-----------Defaults Setup (LEAVE THIS STUFF)
reset_dialogue_defaults();