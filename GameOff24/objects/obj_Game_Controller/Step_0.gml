/// @description 

if(music_timer < music_max_timer)
{
	music_timer++;
}
else
{
	
	audio_play_sound(choose(snd_music_bck_1, snd_music_bck_2), 10, false);
	music_timer = 0;
};

