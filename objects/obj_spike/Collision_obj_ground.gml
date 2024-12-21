if (!instance_exists(collision_point(x, y, obj_ground, true, true))) { 
	speed *= -1.1;
	spd *= -1;
	if (room != rm_level_sandbox) { audio_play_sound(snd_spike, 10, false, 1, 0.4, 1+random_range(-0.3, 0.3)); }
}