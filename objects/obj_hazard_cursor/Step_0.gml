var _lr = (keyboard_check_direct(vk_right) || keyboard_check_direct(ord("D")) || gamepad_button_check(0, gp_padr))
		- (keyboard_check_direct(vk_left) || keyboard_check_direct(ord("A")) || gamepad_button_check(0, gp_padl));
var _ud = (keyboard_check_direct(vk_down) || keyboard_check_direct(ord("S")) || gamepad_button_check(0, gp_padd))
		- (keyboard_check_direct(vk_up) || keyboard_check_direct(ord("W")) || gamepad_button_check(0, gp_padu));
var _fire_p = (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z")) || gamepad_button_check_pressed(0, gp_face1));
var _fire_d = (keyboard_check_direct(vk_enter) || keyboard_check_direct(ord("Z")) || gamepad_button_check(0, gp_face1));
var _fire_r = (keyboard_check_released(vk_enter) || keyboard_check_released(ord("Z")) || gamepad_button_check_released(0, gp_face1));

x += spd*_lr;
y += spd*_ud;

x = clamp(x, 64, room_width-64);
y = clamp(y, 64, room_height-64);

var _grabbables = [obj_laser, obj_poison_emitter, obj_turret, obj_spike];
if (room = rm_level_sandbox) { array_push(_grabbables, obj_slow_area); }

var _coll = collision_circle(x, y, 32, _grabbables, true, true);

if (_fire_p && !instance_exists(held) && _coll != noone) { held = _coll; }

image_index = 0;
if (instance_exists(held)) {
	image_index = 1;
	held.x = x;
	held.y = y;
	held.can_emit = false;
	if (_fire_d && (abs(_lr)||abs(_ud))) {
		held.image_angle = point_direction(0, 0, _lr, _ud);
		held.direction = held.image_angle;
	}
	if (_fire_r) { held = noone; }
}