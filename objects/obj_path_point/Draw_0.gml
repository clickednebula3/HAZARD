var _c = c_white;
if (path_id == 0) { _c = c_yellow; }
draw_set_color(_c);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, _c, image_alpha);
draw_set_font(fnt_main);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, string(path_id+1));
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);