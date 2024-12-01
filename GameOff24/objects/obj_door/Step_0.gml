/// @description 

if(statue.solved)
{
	
	if(image_index != 5)
	{
		if(!audio_is_playing(snd_stone_grind))
		{
			audio_play_sound(snd_stone_grind, 10, false);
		};
		image_index += anim_speed;
	}
	else
	{
		if(audio_is_playing(snd_stone_grind))
		{
			audio_stop_sound(snd_stone_grind);
		};
		can_enter = true;
		solved = false;
		anim_speed = 0;
		image_index = 5;
		event_user(1);
	};
	
};


if(player_nearby && can_enter)
{
	if(keyboard_check_pressed(ord("W")))
	{
		room_goto(connected_room);
	};
};



