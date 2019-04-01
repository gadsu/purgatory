var dr = detection_radius;
if(point_in_rectangle(100,100, x-dr, y-dr, x+dr, y+dr)){
	if(myTextbox != noone){ 
		if(!instance_exists(myTextbox)){ myTextbox = noone; exit; }
	}
	//if I haven't already created my textbox, make one:
	else if(keyboard_check_pressed(interact_key)){
		if(instance_exists(obj_textbox)){ exit; }	//exit if a textbox already exists
		event_user(0);								//if you need variables to update for text
		
		//Hand over variables
		create_dialogue(myText, mySpeaker, myEffects, myTextSpeed, myTypes, myNextLine, myScripts, myTextCol, myEmotion, myEmote);
	}
} else {	//if player moves outside of detection radius
	if(myTextbox != noone){
		with(myTextbox) instance_destroy();
		myTextbox = noone;
	}
}
//if(instance_exists(obj_enemy_boss_songtest)) 
//	{	
//		boss_dead = false;
//	}
if(instance_exists(obj_player)) {player_dead = 0;}
if(dialogue_start) {
	keyboard_key_press(vk_enter);
	keyboard_key_release(vk_enter);
	dialogue_start = false;
}

//else if(instance_exists(obj_enemy_boss_songtest))
//{
//	if(obj_enemy_boss_songtest.hp <= 0 && boss_dead == false )
//	{
//		keyboard_key_press(vk_enter);
//		keyboard_key_release(vk_enter);
//		//show_debug_message(boss_dead);
//		boss_dead = true;
//	}
//}

else if(!instance_exists(obj_player) && player_dead == 0) {
	keyboard_key_press(vk_enter);
	keyboard_key_release(vk_enter);
	player_dead++;
}

if(dialogue_real_start) {
	keyboard_key_press(vk_enter);
	keyboard_key_release(vk_enter);
	dialogue_real_start = false;
}

if(boss_name = "Klaus" && dialogue_1) {
	if(!D0T_dead) {
		myName = "Klaus";
		myPortrait = spr_klaus_dialogue;
		myText[0] = "Another young upstart here to attempt to take the throne?";
		myText[1] = "I will leave everything on the stage as I always do.";
		myText[2] = "Good luck. You’re going to need it, boy.";
		mySpeaker = -1;
	}
	else {
		myName = "Klaus";
		myPortrait = spr_klaus_dialogue;
		myText[0] = "Well, that’s a shame.";
		myText[1] = "That girl showed promise.";
		myText[2] = "Apparently you do too, if you were able to beat her.";
		myText[3] = "Heh. Well, let’s see what you’ve got. Bring it on, kiddo.";
		mySpeaker = -1;
	}
}
else if(boss_name = "D0T" && dialogue_1) {
	if(!Klaus_dead) {
		myName = "D.0.T.";
		myPortrait = spr_dot_dialogue;
		myText[0] = "So, the reigning champion meets her foe.";
		myText[1] = "I gotta say, that takes some guts.";
		myText[2] = "Now... I truly am sorry about this... but I gotta beat you into the ground.";
		mySpeaker = -1;
	}
	else {
		reset_dialogue_defaults();
		myName = "D.0.T.";
		myPortrait = spr_dot_dialogue;
		myText[0] = "Klaus has quite the reputation for breaking the weak ones, and yet here you are.";
		myText[1] = "Guess you’re stronger than I thought.";
		myText[2] = "Just don’t waste my time.";
		mySpeaker = -1;
	}
}
else if(boss_name = "" && dialogue_1) {
	show_debug_message("fucked");
}
