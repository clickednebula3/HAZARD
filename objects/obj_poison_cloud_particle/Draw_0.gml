image_xscale += size_spd;
image_yscale += size_spd;

draw_sprite_ext(sprite_index, image_angle, x, y, image_xscale, image_yscale, image_angle, c_green, image_alpha-0.6*(1 - (alarm[0]/time_until_fade)));