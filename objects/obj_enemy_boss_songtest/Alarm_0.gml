
/// @description Start the Timeline EDITED
show_debug_message("timeline started");
timeline_index = tl_ANGEL_VOICES_01;
timeline_position = 0;
timeline_running = true;
timeline_speed = 1;

globalvar skip;
skip = audio_play_sound(Virtual_Self___ANGEL_VOICES, 10, false);
audio_sound_set_track_position(skip, 48.766);
audio_play_sound(skip, 0, false);
timeline_index = tl_ANGEL_VOICES_02;
timeline_position = 0;
timeline_running = true;
timeline_speed = 1.475555555555555555555;