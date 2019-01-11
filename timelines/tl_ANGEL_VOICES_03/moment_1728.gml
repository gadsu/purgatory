///@description Main Beat(MB), MD
enemy_bullet(oebw, 270, bx, by + 40);
//enemy_bullet(oebw, 270, bx - 49, by + 40);
dir_01 = 340;

for (var i = 0; i < 10; i++)
{
	enemy_bullet(oebw, dir_01 - (i * 10), bx + 60 -(i * 4), by + 40);
}

//Begin box four
///@description Start of Timeline 3
//EQ3.image_index = 10;
timeline_index = tl_ANGEL_VOICES_04;
timeline_position = 0;
timeline_running = true;
timeline_speed = 1.475555555555555555555;