if (gamepad_button_check_pressed(0, gp_start)) { room_restart(); }
if (gamepad_button_check_pressed(0, gp_select)) { game_restart(); }
if (gamepad_button_check_pressed(0, gp_face4) || keyboard_check_pressed(ord("M"))) { music = !music; }
if (gamepad_button_check_pressed(0, gp_shoulderr)) { room_goto_next(); }
if (gamepad_button_check_pressed(0, gp_shoulderl)) { room_goto_previous(); }

if (music && !audio_is_playing(mus_undeterrable)) { audio_play_sound(mus_undeterrable, 10, true); }
else if (!music && audio_is_playing(mus_undeterrable)) { audio_stop_sound(mus_undeterrable); }