draw_self();

if (can_emit) {
	draw_set_color(c_red);

	var _xp = x;
	var _yp = y;
	var _x = x;
	var _y = y;
	var _ang = image_angle;
	var _a = 3;


	for (var i=1; i<300; i++) {
		_x += _a*dcos(_ang);
		_y -= _a*dsin(_ang);
	
		draw_line_width(_xp, _yp, _x, _y, 5);
		draw_line_width_color(_xp, _yp, _x, _y, 2, c_yellow, c_white);
		var _coll = collision_line(_xp, _yp, _x, _y, [obj_mon, obj_box, obj_ground, obj_spike], true, false);
	
		if (_coll != noone) {
			if (_coll.object_index == obj_mon) {
				audio_play_sound(snd_laser_2, 10, false, 1, 0.2, 0.7+random_range(-0.1, 0.1));
				_coll.HP -= 1;
				_coll.x += (_x - _xp)/4;
				_coll.y += (_y - _yp)/4;
				_coll.speed *= 0.5;
			} else if (_coll.object_index == obj_box) {
				_coll.hspeed = (_x - _xp)/4;
				_coll.vspeed = (_y - _yp)/4;
			}
			break;
		}
	
		_xp = _x;
		_yp = _y;
	}

	draw_set_color(c_white);
}

can_emit = true;