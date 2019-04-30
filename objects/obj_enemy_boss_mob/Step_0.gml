/// @description Insert description here
// You can write your code in this editor

event_inherited();

if(dialogue_1) {
	dialogue_1 = false;
}

if(!object_exists(obj_textbox)) {
	MOB_dead = true;
	par_speaker.detection_radius = 10;
	//keyboard_key_press(vk_enter);
	//keyboard_key_release(vk_enter);
}