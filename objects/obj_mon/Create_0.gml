manager = noone;
path = [];
path_id = -1;
spd = 3;
r = 16;
f = 0.9;



HP = 100;
poison_time = 0;

function _angle_inator(_initial, _target) {
	while (_initial < 0) { _initial += 360; } _initial %= 360;
	while (_target < 0) { _target += 360; } _target %= 360;
	var _diff = _target - _initial;
		
	if (abs(_diff) > 180) {
		if (_initial > _target) { _diff += 360; }
		else { _diff -= 360; }
	}
	
	return _diff;
}