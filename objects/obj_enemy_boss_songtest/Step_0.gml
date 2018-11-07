timer++

//Step code is in the parent file
event_inherited();

if(dialog_start_started == false)
{
	reset_dialogue_defaults();
	
	myName = "D.0.T.";
	myPortrait = spr_boss_dialogue;
	myText[0] = "Taking the title defender on first?";
	myText[1] = "I gotta say, kid, that takes a lot of balls.";
	myText[2] = "You think you have what it takes to take me on?";
	myText[3] = "Show me what you got, and hold nothing back!";
	mySpeaker = -1;
	
}
	
	if(keyboard_check_pressed(vk_end) == true)
	{
		show_debug_message("pressed");
		num++;
		if(num == 5)
		{
			dialog_start_started = true;
		}
	}

if (dialog_start_started == true && safeguard == false)
{
	alarm[0] = 60;
	safeguard = true;
}



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
	myText[1] = "Good job, but you’re not finished. You’ve still got Klaus and MOB.";
	myText[2] = "Don’t underestimate either of them. Well, go ahead and overestimate MOB.";
	myText[3] = "He ain’t as good as he says he is.";
	myText[4] = "Now, I gotta repair this mask, so you gonna pay for this?";
	mySpeaker = -1;
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

//if(instance_exists(obj_player) == false)
//{
//	timeline_running = false;
//}

