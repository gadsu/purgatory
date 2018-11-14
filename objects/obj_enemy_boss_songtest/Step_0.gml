timer++

//Step code is in the parent file
event_inherited();

if(dialogue_1 == true)
{
	reset_dialogue_defaults();
	
	myName = "D.0.T.";
	myPortrait = spr_dot_dialogue;
	myText[0] = "Taking the title defender on first?";
	myText[1] = "I gotta say, kid, that takes a lot of balls.";
	myText[2] = "You think you have what it takes to take me on?";
	myText[3] = "Show me what you got, and hold nothing back!";
	mySpeaker = -1;
	
	
}
if(!instance_exists(obj_textbox) && dialogue_1 == true && timer > 1)
{
	alarm[0] = 60;
	dialogue_1 = false;
	dialogue_2 = true;
	par_speaker.detection_radius = 10;
}
	
//Text for when the player dies
if(!instance_exists(obj_player) && dialogue_2 == true )
{
	par_speaker.detection_radius = 1000;
	
	reset_dialogue_defaults();
	myName = "D.0.T.";
	myPortrait = spr_dot_dialogue;
	myText[0] = "I would love to say you had a chance, but you just don’t have what it takes.";
	myText[1] = "Not for a challenge like this.";
	mySpeaker = -1;
	
	if(instance_exists(obj_textbox))
	{
		alarm[2] = 5;
	}
}	
if(!instance_exists(obj_textbox) && (dialogue_2 == true || dialogue_3 == true) && text_01 == true)
{
	par_speaker.detection_radius = 10;
	reset_dialogue_defaults();
	show_debug_message("please work");
	instance_create_depth(room_width/2, room_height/2, -1, obj_highscoretextbox);
	//text_01 = false;
	dialogue_2 = false;
	dialogue_3 = false;

}


// For some reason the top thing doesnt like it when i add a clause for dialogue_3


if(hp <= 0 && dialogue_3 != true && text_01 == false) {
	
	timeline_speed = 0;
	par_speaker.detection_radius = 1000;
	
	
	reset_dialogue_defaults();
	myName = "D.0.T.";
	myPortrait = spr_dot_dialogue;
	myText[0] = "Well, damn. I don’t think anyone was expecting some nobody to come in and take out the reigning champ on his first go around.";
	myText[1] = "Good job, but you’re not finished. You’ve still got Klaus and MOB.";
	myText[2] = "Don’t underestimate either of them. Well, go ahead and overestimate MOB.";
	myText[3] = "He ain’t as good as he says he is.";
	myText[4] = "Now, I gotta repair this mask, so you gonna pay for this?";
	mySpeaker = -1;
	
	
	if(instance_exists(obj_textbox))
	{
		alarm[3] = 5;
	}
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

