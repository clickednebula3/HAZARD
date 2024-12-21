other.HP -= 30;
audio_play_sound(snd_fire_hit, 10, false, 1, 0.3, 1+random_range(-0.1, 0.1));
instance_destroy();