path = [
	instance_create_depth(x, y, depth, obj_path_point),
	instance_create_depth(700, 128, depth, obj_path_point),
	instance_create_depth(700, 348, depth, obj_path_point),
	instance_create_depth(250, 348, depth, obj_path_point),
	instance_create_depth(250, 572, depth, obj_path_point),
	instance_create_depth(700, 572, depth, obj_path_point),
	instance_create_depth(250, 572+16, depth, obj_path_point),
	instance_create_depth(250, 348+16, depth, obj_path_point),
	instance_create_depth(700, 348+16, depth, obj_path_point),
	instance_create_depth(700, 128+16, depth, obj_path_point),
	instance_create_depth(x, y+16, depth, obj_path_point),
];
time_between_spawns = sec;