/// This enemy will spawn from the top in a random location. come to the middle of the screen
// shoot and then fly off the button of the screen
i = 0;
timer = 0;
hp = 4;

shot = false;

vspeed = 7;
spawn_x = random_range(0, room_width);

blend = image_blend; // the base color of the sprite
blendtime = 0; // how long the blending will take