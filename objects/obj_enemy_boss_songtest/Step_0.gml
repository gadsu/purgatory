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
else if(instance_exists(obj_enemy_boss_songtest) == false) {
	reset_dialogue_defaults();
	myName = "D.0.T.";
	myPortrait = spr_boss_dialogue;
	myText[0] = "Well, damn. I don’t think anyone was expecting some nobody to come in and take out the reigning champ on his first go around.";
	myText[1] = "Good job, but you’re not finished.";
	myText[2] = "You’ve still got Klaus and MOB.";
	myText[3] = "Don’t underestimate either of them.";
	myText[4] = "Well, go ahead and overestimate MOB.";
	myText[5] = "He ain’t as good as he says he is.";
	myText[6] = "Now, I gotta repair this mask.";
	myText[7] = "You gonna pay for this?";
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