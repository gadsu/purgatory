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
