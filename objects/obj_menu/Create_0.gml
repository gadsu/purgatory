/// @description Intialize
menu_ids[0] = "Quit Game";
menu_ids[1] = "Options";
menu_ids[2] = "High Scores";
menu_ids[3] = "Story Mode";

option_ids[0] = "Back";
option_ids[1] = "HUD";
option_ids[2] = "Sound";

hud_ids[0] = "Back"
hud_ids[1] = "Blue Crackles";
hud_ids[2] = "Blue Screentones";
hud_ids[3] = "Green Crackles"
hud_ids[4] = "Green Screentones"
hud_ids[5] = "Purple Crackles"
hud_ids[6] = "Purple Screentones"
hud_ids[7] = "Red Crackles"
hud_ids[8] = "Red Screentones"
hud_ids[9] = "Yellow Crackles"
hud_ids[10] = "Yellow Screentones"

//Animation Variables
anim = 3;
anim_n = 0;
clickable = false; //determines if in level select
options = false; //determines if in options menu
hud_customize = false; //determines if in the hud menu
cooldown = false; // make sure that the sound doesnt repeatedly play
//show_debug_message(x);
//show_debug_message(y);
length_x = 120;
length_y = 120;
globalvar boss_name;
boss_name = "";

show_debug_message(length_x);
show_debug_message(length_y);

//spr_back.image_alpha = 0;
//spr_D0T.image_alpha = 0;
//spr_klaus.image_alpha = 0;
//spr_MOB.image_alpha = 0;
//spr_lines.image_alpha = 0;