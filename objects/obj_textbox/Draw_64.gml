//Draw portrait
if(portrait[page] != -1){
	draw_sprite_ext(portrait[page], emotion[page], pos_x-portraitWidth + 50, pos_y, scale, scale, 0, c_white, 1);

	#region Idle Animated Portrait
	if(type[page] == 1 or charCount >= str_len) {
		if(portrait_idle[page] != -1){
			var posx = pos_x-portraitWidth; var posy = pos_y;
			if(portrait_idle_x[page] != -1){ posx += portrait_idle_x[page] * scale; }
			if(portrait_idle_y[page] != -1){ posy += portrait_idle_y[page] * scale; }
		
			portrait_idle_c += portrait_idle_s[page];
			if(portrait_idle_c >= portrait_idle_n[page]){ portrait_idle_c = 0; }
			draw_sprite_ext(portrait_idle[page], portrait_idle_c, posx, posy, scale,scale, 0, c_white, 1);	
		}
	}
	#endregion
}

//Draw textbox
draw_sprite_ext(dialogue_box, 0, pos_x-12,pos_y, scale,scale, 0, c_white, 1);

#region Draw name and namebox
var cname = name[page]

if(cname != "None"){
	//Draw namebox
	draw_sprite_ext(name_box, 0, name_box_x,name_box_y, scale,scale, 0, c_white, 1);
	
	//Draw name text
	c = name_col;
	draw_set_halign(fa_center);
	draw_set_font(name_font);
	draw_text_color(name_box_text_x, name_box_text_y+1, cname, c,c,c,c, 1);
	draw_set_halign(fa_left);
}
#endregion

//Set font
draw_set_font(font[page]);

//--------Draw the text differently if we are in 1) a dialogue choice or 2) normal dialogue
#region TYPE 1: DIALOGUE CHOICE
if(type[page] == 1){
	//Variables we need
	var col = default_col, tp = text[page], tpl = array_length_1d(tp), txtwidth = boxWidth-(2*x_buffer);
	var cc = 1, yy = pos_y+y_buffer, xx = pos_x+x_buffer, ii = 0, iy = 0;
	
	//Loop through our choices, draw them, highlight the one we are selecting
	repeat(tpl){
		if(choice == ii){ 
			if(chosen) { col = select_col; }
			else	   { col = choice_col; }
		} else { col = c_white; }
		
		//Draw our choices
		var ctext = "* "+tp[ii];
		draw_text_ext_color(xx, yy+((ii+iy)*stringHeight), ctext, stringHeight, txtwidth, col, col, col, col, 1); 
		
		if(string_width(ctext) > txtwidth) { iy++; }
		ii++; 
	}
} 
#endregion

#region TYPE 0: NORMAL DIALOGUE
else {
	//Detect pauses, play voice sound, increment our "typewriter"
	//Only need to do this if we haven't typed everything out AND we aren't already paused
	
	if(charCount < str_len and !pause){
		
		#region Increment character counter (charCount) every frame, used for "typewriter"
		var tsc2 = text_speed_c*2;
		var txtspd = text_speed[page];
		if(text_speed_c+1 < text_speed_al and charCount == txtspd[tsc2+2]) {
			text_speed_c++;
			tsc2 = text_speed_c*2;
		}
		charCount += txtspd[tsc2+1];
		#endregion
		
		//Get Current Character
		var ch = string_char_at(text_NE, floor(charCount));
		
		#region Check for Pause, Voice, Animated Sprite
		switch(ch){
			case " ": break;
			case ",":
			case ".":
				pause = true;
				alarm[1] = 10;	//how many frames we wait if we detect a fullstop or comma
				break;
			
			case "?":
			case "!":
				pause = true;
				alarm[1] = 20;	//how many frames we wait if we detect a ! or ?
				break;
			default:
				
				//Play the voice sound every 2 frames (you can change this number if this is too often)
				var audio_increment = 2;
				
				#region Animated Sprite
				if(portrait_talk[page] != -1) {
					if(!pause) {
						var posx = pos_x-portraitWidth; var posy = pos_y;
						if(portrait_talk_x[page] != -1){ posx += portrait_talk_x[page] * scale; }
						if(portrait_talk_y[page] != -1){ posy += portrait_talk_y[page] * scale; }
		
						portrait_talk_c += portrait_talk_s[page];
		
						//To include the consideration of vowels
						//*/
						var l = string_lower(ch);
						if(l == "a" or l == "e" or l == "i" or l == "o" or l == "u"){ 
							portrait_talk_c = open_mouth_frame; 
							if (charCount > audio_c) { 
								audio_play_sound(voice[page], 1, false); 
								audio_c = charCount + audio_increment; 
							} 
						}
						/*/
						if (charCount > audio_c) { 
							audio_play_sound(voice[page], 1, false); 
							audio_c = charCount + audio_increment; 
						} 
						//*/
						if(portrait_talk_c > portrait_talk_n[page]){ portrait_talk_c = 0; }
						draw_sprite_ext(portrait_talk[page], portrait_talk_c, posx, posy, scale,scale, 0, c_white, 1);	
					}
				} 
				#endregion
		}
		#endregion
		
	}

	//---------------------------------Setup for Effects----------------------------//
	#region
	var col = default_col, cc = 1, yy = pos_y+y_buffer, xx = pos_x+x_buffer, cx = 0, cy = 0, lineswidth;
	var ty = 0, by = 0, bp_len = -1, effect = 0, next_space, breakpoint = 0, effects_c = 0, text_col_c = 0;
	var bp_array = breakpoints, txtwidth = boxWidth-(2*x_buffer), char_max = txtwidth div charSize;
	
	//Check if there are breakpoints in this string, if there are save their lengths
	if(bp_array != -1){ bp_len = array_length_1d(bp_array); next_space = breakpoints[by]; by++; }
	
	//For sin wave stuff
	t += 1;
	var so = t;
	var shift = sin(t*pi*2/60)*3;
	#endregion
	
	//---------------------------------Draw the Letters-----------------------------//
	#region
	
	repeat(charCount){
		//Get current letter
		letter = string_char_at(text_NE, cc);
	
		var ec2 = effects_c*2;
		if(effects_c < effects_al and effects_p[ec2] == cc){ 
			effects_c++; 
			effect = effects_p[ec2+1];
		}
		
		var tc2 = text_col_c*2;
		if(text_col_c < text_col_al and text_col_p[tc2] == cc){ 
			text_col_c++;
			col = text_col_p[tc2+1];
		}
		
		//Get next space, deal with new lines
		if(bp_len != -1 and cc == next_space){
			cy += 1; cx = 0; xx = pos_x+x_buffer;
			if(by < bp_len){
				next_space = breakpoints[by];
				by++;
			}
		}
		
		switch(effect){
			case 0:	//normal
				draw_text_color(xx + (cx*charSize), yy+(cy*stringHeight), letter, col, col, col, col, 1);
				break;
			
			case 1:	//shakey
				draw_text_color(xx + (cx*charSize)+random_range(-1,1), yy+(cy*stringHeight)+random_range(-1,1), letter, col, col, col, col, 1);
				break;
			
			case 2:	//wave
				var so = t;
				var shift = sin(so*pi*freq/room_speed)*amplitude;
				draw_text_color(xx + (cx*charSize), yy+(cy*stringHeight)+shift, letter, col, col, col, col, 1);
				break; 
			
			case 3: //colour shift
				var c1 = make_colour_hsv(t+cc, 255, 255);
				var c2 = make_colour_hsv(t+cc+34, 255, 255);
				draw_text_color(xx + (cx*charSize), yy+(cy*stringHeight), letter, c1, c1, c2, c2, 1);
				break;
		
			case 4: //wave AND colour shift
				var so = t + cc;
				var shift = sin(so*pi*freq/room_speed)*amplitude;
				var c1 = make_colour_hsv(t+cc, 255, 255);
				var c2 = make_colour_hsv(t+cc+45, 255, 255);
				draw_text_color(xx + (cx*charSize), yy+(cy*stringHeight)+shift, letter, c1, c1, c2, c2, 1);
				break; 
		
			case 5: //spin
				var so = t + cc;
				var shift = sin(so*pi*freq/room_speed);
				var mv = charSize/2;
				draw_set_valign(fa_middle); draw_set_halign(fa_middle);
				draw_text_transformed_color(xx + (cx*charSize)+mv, yy+(cy*stringHeight)+(stringHeight/2), letter, 1, 1, shift*20, col, col, col, col, 1);
				draw_set_valign(fa_top); draw_set_halign(fa_left);
				break;
				
			case 6: //pulse
				var so = t + cc;
				var shift = abs(sin(so*pi*freq/room_speed));
				var mv = charSize/2;
				draw_set_valign(fa_middle); draw_set_halign(fa_middle);
				draw_text_transformed_color(xx + (cx*charSize)+mv, yy+(cy*stringHeight)+(stringHeight/2), letter, shift, shift, 0, col, col, col, col, 1);
				draw_set_valign(fa_top); draw_set_halign(fa_left);
				break;
				
			case 7:	//flicker
				var so = t + cc;
				var shift = sin(so*pi*freq/room_speed);
				draw_text_color(xx + (cx*charSize), yy+(cy*stringHeight), letter, col, col, col, col, shift+random_range(-1,1));
				break; 
		}
		
		switch(letter) {
			case "a":
				xx -= 10;
				break;
			case "b":
				xx -= 8;
				break;
			case "c":
				xx -= 10;
				break;
			case "d":
				xx -= 8;
				break;
			case "e":
				xx -= 9;
				break;
			case "f":
				xx -= 13;
				break;
			case "g":
				xx -= 8;
				break;
			case "h":
				xx -= 8;
				break;
			case "i":
				xx -= 16;
				break;
			case "j":
				xx -= 16;
				break;
			case "k":
				xx -= 9;
				break;
			case "l":
				xx -= 16;
				break;
			case "m":
				xx -= 1;
				break;
			case "n":
				xx -= 8;
				break;
			case "o":
				xx -= 8;
				break;
			case "p":
				xx -= 8;
				break;
			case "q":
				xx -= 8;
				break;
			case "r":
				xx -= 12;
				break;
			case "s":
				xx -= 11;
				break;
			case "t":
				xx -= 12;
				break;
			case "u":
				xx -= 7;
				break;
			case "v":
				xx -= 7;
				break;
			case "w":
				xx -= 1;
				break;
			case "x":
				xx -= 8;
				break;
			case "y":
				xx -= 8;
				break;
			case "z":
				xx -= 8;
				break;
			case "A":
				xx -= 5;
				break;
			case "B":
				xx -= 6;
				break;
			case "C":
				xx -= 6;
				break;
			case "D":
				xx -= 5;
				break;
			case "E":
				xx -= 8;
				break;
			case "F":
				xx -= 8;
				break;
			case "G":
				xx -= 6;
				break;
			case "H":
				xx -= 6;
				break;
			case "I":
				xx -= 15;
				break;
			case "J":
				xx -= 13;
				break;
			case "K":
				xx -= 7;
				break;
			case "L":
				xx -= 7;
				break;
			case "M":
				xx -= 1;
				break;
			case "N":
				xx -= 4;
				break;
			case "O":
				xx -= 3;
				break;
			case "P":
				xx -= 6;
				break;
			case "Q":
				xx -= 3;
				break;
			case "R":
				xx -= 7;
				break;
			case "S":
				xx -= 7;
				break;
			case "T":
				xx -= 7;
				break;
			case "U":
				xx -= 4;
				break;
			case "V":
				xx -= 4;
				break;
			case "W":
				xx += 3;
				break;
			case "X":
				xx -= 6;
				break;
			case "Y":
				xx -= 6;
				break;
			case "Z":
				xx -= 6;
				break;
			case ",":
				xx -= 15;
				break;
			case ".":
				xx -= 14;
				break;
			case "!":
				xx -= 14;
				break;
			case "?":
				xx -= 9;
				break;
			case "'":
				xx -= 14;
				break;
			case " ":
				xx -= 13;
				break;
		}
		
		//Increment variables for next letter
		cc += 1;
		cx += 1;
	}
	#endregion
	
	#region Draw "Finished" effect
	if(charCount >= str_len){
		var shift = sin((t+cc)*pi*freq/room_speed)*amplitude;
		finishede_count += finishede_spd;
		if(finishede_count >= finishede_num){ finishede_count = 0; }
		draw_sprite(finished_effect, finishede_count, finishede_x + shift - 40, finishede_y);
	}
	#endregion
}
#endregion