randomise();
image_xscale = (20+random_range(-4, 4)) / 24;
image_yscale = image_xscale;
hspeed = random_range(-0.5, 0.5);
vspeed = random_range(-0.5, 0.5);
size_spd = random_range(-0.01, 0.01);


time_until_fade = sec*random_range(0.3, 1.2);
alarm[0] = time_until_fade;