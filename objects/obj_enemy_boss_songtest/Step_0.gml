timer++

//Step code is in the parent file
event_inherited();

if(instance_exists(obj_player) == false) {
	reset_dialogue_defaults();
	myName = "D.0.T.";
	myPortrait = spr_boss_dialogue;
	myText[0] = "I would love to say you had a chance, but you just don’t have what it takes.";
	myText[1] = "Not for a challenge like this.";
	mySpeaker = -1;
}
//If the player dies stop the timeline 
// DEBUG MODE ON

//if(instance_exists(obj_player) == false)
//{
//	timeline_running = false;
//}







//if (spawned == false and num < 30 and timer > 106)
//{
	
	
//	scr_triangle_bullets(angle, x, y, 20, 50, .15); //.002
	
	
	
//	//enemy_bullet(obj_enemy_bullet_acel ,270, x-20, y);
//	//enemy_bullet(obj_enemy_bullet_dec, 270, x+20, y);

	
//	num++;
//	spawned = true;
//	alarm[2] = 40;

//	angle = angle + pi/2
	
	
//}