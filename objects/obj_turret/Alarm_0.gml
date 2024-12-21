/// @description Fire!

if (can_emit) {
	var _flame = instance_create_depth(x, y, depth, obj_flame);
	_flame.image_angle = image_angle;
	_flame.direction = image_angle;
	_flame.speed = 12;
}
can_emit = true;

alarm[0] = sec/6;