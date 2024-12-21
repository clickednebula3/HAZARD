if (can_emit && cooldown <= 0) {
	other.HP -= 45;
	other.speed = 20;
	other.direction = point_direction(x, y, other.x, other.y);
	audio_play_sound(snd_spike, 10, false, 1, 0.4, 1+random_range(-0.3, 0.3));
}
cooldown = cooldown_max;
can_emit = true;