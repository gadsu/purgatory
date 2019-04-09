/// @description Check Keyboard Presses

if (keyboard_check_pressed(vk_down) == 1 || keyboard_check_pressed(vk_up) == 1 )
{
	audio_play_sound(menu_scroll_sound_effect, 1, false);
}
