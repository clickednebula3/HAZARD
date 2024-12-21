draw_set_color(c_red);
draw_circle(x, y, r, true);
draw_self();

var _coll = collision_circle(x, y, r, [obj_mon], true, false);
if (instance_exists(_coll)) {
	image_angle = point_direction(x, y, _coll.x, _coll.y);
}

draw_set_color(c_white);