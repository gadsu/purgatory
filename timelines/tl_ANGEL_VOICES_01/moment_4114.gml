///@description SAY
dir_01 = 200;

for (var i = 0; i < 10; i++)
{
	enemy_bullet(oebw, dir_01 + (i * 10), bx - 60, by + 40);
}
timeline_index = tl_ANGEL_VOICES_02;
timeline_position = 0;
timeline_running = true;
timeline_speed = 1.475555555555555555555;