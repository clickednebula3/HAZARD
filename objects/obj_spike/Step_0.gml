direction = image_angle;
speed += spd/10;
speed *= 0.9;
image_alpha = 1;
if (cooldown > 0) { cooldown--; image_alpha = 0.7;}