#macro sec game_get_speed(gamespeed_fps)

path = [];
mon_spd = 1;
mon_count = 3;
mons_success_requirement = mon_count-2;
mons_success = 0;

time_between_spawns = sec*3;

alarm[0] = time_between_spawns;
alarm[1] = 1;