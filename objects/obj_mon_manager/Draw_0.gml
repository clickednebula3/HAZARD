if (mons_success >= mons_success_requirement) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(room_width/2, room_height/2, "Press Space!");
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	if (keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face3))
	{ audio_play_sound(snd_win, 10, false, 1, 0.25); room_goto_next(); }
} else if (instance_number(obj_mon) <= 0 && mon_count <= 0) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(room_width/2, room_height/2, "Press [R] to Restart this level.");
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}

if (mons_success > 0) {
	if (mons_success >= 3) { draw_set_color(c_yellow); }
	draw_text(8, 8, "Collected Circles: "+string(mons_success));
	draw_set_color(c_white);
}