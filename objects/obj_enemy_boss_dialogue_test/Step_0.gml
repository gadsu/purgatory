//Step code is in the parent file
event_inherited();

if (y >= 75) {
	vspeed = 0;
}

if (hp <= 0) {
	score += 100;
	global.bossdead = true;
	show_debug_message(score);
	instance_create_depth(room_width/2, room_height/2, -1, obj_textbox);
	instance_destroy();
}

if(timer mod 30 == 1) {	i++ }

//after a few seconds make the boss vulnerable again
if (timer == 80) {
	invul = false;
}

timer++