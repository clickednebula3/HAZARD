if (array_length(path) > path_id+1) {
	var _next = path[path_id+1];
	
	direction += _angle_inator(direction, point_direction(x, y, _next.x, _next.y))/15;
	
	var _d = point_distance(x, y, _next.x, _next.y);
	var _slow = collision_point(x, y, obj_slow_area, true, true);
	if (instance_exists(_slow)) { speed += 0.25; speed *= f * 0.94;}
	else { speed += 0.25; speed *= f; }
	if (_d < r) { path_id++; }
} else {
	if (instance_exists(manager)) { manager.mons_success++; }
	instance_destroy();
}

if (poison_time > 0) {
	poison_time--;
	HP -= 0.5;
	if (!audio_is_playing(snd_poison)) { audio_play_sound(snd_poison, 10, false, 1, 0.3, 1+random_range(-0.3, 0.3)); }
}

if (HP <= 0) { instance_create_depth(x, y, depth, obj_mon_death_particle); instance_destroy(); }