/// @description 


if(instance_exists(obj_next_button))
{
	instance_destroy(next_button);
};
dodrawbox = false;
obj_Player_Parent.freeze = false;


audio_play_sound(snd_shoop, 10, false);

effect_create_layer("inst_visual_over_player", ef_smoke, x, y, 0, c_white);
//effect_create_above(ef_cloud, x, y, 0, c_white);
instance_destroy();

