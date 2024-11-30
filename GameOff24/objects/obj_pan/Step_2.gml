/// @description 

if(dofade)
{
	image_alpha -= .01;
	effect_create_layer("HUD", ef_star, random_range(x - 30, x + 30), random_range(y - 30, y + 30), 0, choose(c_green, c_yellow, c_lime));
	
	if(!audio_is_playing(snd_sparkle))
	{
		audio_play_sound(snd_sparkle, 10, false);
	};
	
};


if(image_alpha <= 0)
{
	instance_destroy();
};


