/// @description Handles Keys Pressed/Input

if (keyboard_check(vk_anykey) and string_length(text) < 10)
{
	text = text + string(keyboard_string); // makes the key you pressed add on to the string itself
	keyboard_string = ""; //makes the keyboard reset back to nothing when you press another button
}
if (keyboard_check(vk_backspace) and !keyboard_check_pressed(vk_backspace) and delete_timer == 2) //  makes sure its not being held down
{
	text = string_delete(text, string_length(text), 1);
	delete_timer = 0;
	keyboard_string = "";
}

if (keyboard_check_pressed(vk_backspace))
{
	text = string_delete(text, string_length(text), 1);
	keyboard_string = "";
	delete_timer = -4;
}

if(keyboard_check_pressed(vk_enter) == true){
	show_debug_message("pressed");
	num++;
	if(num == 4 && !instance_exists(obj_player)){
		dialogue = true;
	}
	else if(num == 7 && !instance_exists(obj_enemy_boss_songtest)){
		dialogue = true;
	}
}

if (dialogue == true && dialogue_guard == false){
	if (keyboard_check_pressed(vk_enter) && safeguard == true)
{
	show_debug_message("pressed enter");
	if (global.highscore == false && room == 1)
	{
		
		highscore_add(text, score);
		room_goto(0);
		global.highscore = true;
		score = 0;
		audio_stop_all();
		instance_destroy();
		
	
	}

}
	dialogue_guard = true;
}

//if (keyboard_check_pressed(vk_enter) && safeguard == true)
//{
//	show_debug_message("pressed enter");
//	if (global.highscore == false && room == 1)
//	{
		
//		highscore_add(text, score);
//		room_goto(0);
//		global.highscore = true;
//		score = 0;
//		audio_stop_all();
//		instance_destroy();
		
	
//	}

//}
//Handle Timer Update
if (delete_timer != 2)
{
	delete_timer++;
}
