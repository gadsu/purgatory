timer++

//Step code is in the parent file
event_inherited();
//intro lines
//if(dialogue_1 == true) {
//	if(Klaus_dead) {
//		//show_debug_message("klaus ded");
//		reset_dialogue_defaults();
//		myName = "D.0.T.";
//		myPortrait = spr_dot_dialogue;
//		myText[0] = "Klaus has quite the reputation for breaking the weak ones, and yet here you are.";
//		myText[1] = "Guess you’re stronger than I thought.";
//		myText[2] = "Just don’t waste my time.";
//		mySpeaker = -1;
//	}
//	else {
//		//show_debug_message("klaus lives");
//		myName = "D.0.T.";
//		myPortrait = spr_dot_dialogue;
//		myText[0] = "So, the reigning champion meets her foe.";
//		myText[1] = "I gotta say, that takes some guts.";
//		myText[2] = "Now... I truly am sorry about this... but I gotta beat you into the ground.";
//		mySpeaker = -1;
//	}
//}
//start timeline and music
if(!instance_exists(obj_textbox) && dialogue_1 == true && timer > 1) {
	alarm[0] = 60;
	dialogue_1 = false;
	dialogue_2 = true;
	par_speaker.detection_radius = 10;
}
	
//Text for when the player dies
if((obj_player.y > 1000 && dialogue_2 == true) ||
			(timeline_index == tl_ANGEL_VOICES_07a && timeline_position > 4100 && 
			timeline_running == true && health <= 50 && text_01 != true))
{
	timeline_speed = 0;
	timeline_running = false;
	par_speaker.detection_radius = 1000;
	reset_dialogue_defaults();
	myName = "D.0.T.";
	myPortrait = spr_dot_dialogue;
	myText[0] = "I would love to say you had a chance, but you simply do not have what it takes.";
	myEffects[0] = [57,1,60,0];
	myText[1] = "Not for a challenge like this.";
	mySpeaker = -1;
	
	//Needed to solve weird issue of not spawning the text box
	if(text_01 == false)
	{
	//	show_debug_message("ENTER");
		keyboard_key_press(vk_enter);
		keyboard_key_release(vk_enter);
	}
	
	if(text_01 == false)
	{
		audio_sound_gain(Virtual_Self___ANGEL_VOICES_CUT, 0, 2500);
		//alarm[2] = 5;
		text_01 = true;
		timer = 0
	}
}	
if(!instance_exists(obj_textbox) && (dialogue_2 == true || dialogue_3 == true) && text_01 == true && timer > 50)
{
	par_speaker.detection_radius = 10;
	reset_dialogue_defaults();
	//show_debug_message("please work");
	instance_create_depth(room_width/2, room_height/2, -1, obj_highscoretextbox);
	//text_01 = false;
	dialogue_2 = false;
	dialogue_3 = false;

}


// For some reason the top thing doesnt like it when i add a clause for dialogue_3


//if(hp <= 0 && dialogue_3 != true && text_01 == false) {
//if(timeline_index == tl_ANGEL_VOICES_07a && timeline_position > 4100 && dialogue_3 != true && text_01 == false) {
//player wins
if(timeline_index == tl_ANGEL_VOICES_07a && timeline_position > 4100 && timeline_running == true && health > 50) {
	
	timeline_speed = 0;
	timeline_running = false;
	par_speaker.detection_radius = 1000;
	
	reset_dialogue_defaults();
	myName = "D.0.T.";
	myPortrait = spr_dot_dialogue;
	myText[0] = "Well, damn.";
    myText[1] = "No one was expecting some nobody to get in and take out the reigning champ the first time around, especially me.";
    myText[2] = "Good job.";
    myText[3] = "Well, you have the reins now.";
    myText[4] = "Make the most of it, and please, for the love of music, do not screw it up.";
	mySpeaker = -1;
	D0T_dead = true;
	
	keyboard_key_press(vk_enter);
	keyboard_key_release(vk_enter);
	
	//if(instance_exists(obj_textbox) && text_01 == false)
	//{
	//	//alarm[3] = 5;
	//}
	text_01 = true;
	
	//RETURN TO MENU
	//
	
	
}


//Turn Red when hit
if (blendtime > 0)
{
	blendtime--;
}
else
{
	blend = c_white;
}


//If the player dies stop the timeline 
// DEBUG MODE ON

if(instance_exists(obj_player) == false)
{
	timeline_running = false;
}

//Boss gains favor
if(!instance_exists(obj_textbox) && timer mod 25 == 0)
{
	health = health - 0.1;
}
