/// @description Spawn Mon
// You can write your code in this editor

if (mon_count <= 0) { return; }
mon_count--;


var _mon = instance_create_depth(x, y, depth, obj_mon);
_mon.path = path;
_mon.spd = mon_spd;
_mon.manager = self;


alarm[0] = time_between_spawns;