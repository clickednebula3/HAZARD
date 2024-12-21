draw_set_color(c_green);

image_index = 0;
if (point_distance(x, y, mouse_x, mouse_y) < emit_radius+4) {
	draw_set_color(c_yellow);
	image_index = 1;
}

draw_circle(x, y, emit_radius, true);
draw_set_color(c_white);

draw_self();