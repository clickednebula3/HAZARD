/// @description Emit Paticles
// You can write your code in this editor

if (can_emit && point_distance(x, y, mouse_x, mouse_y) > emit_radius+4) {
	var _a = emit_radius-4;
	instance_create_depth(x+random_range(-_a, _a), y+random_range(-_a, _a), depth-1, obj_poison_cloud_particle);
}

can_emit = true;
alarm[0] = irandom_range(time_between_particles[0], time_between_particles[1]);