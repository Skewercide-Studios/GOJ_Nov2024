/// @description State Machine



switch state
{
	
	case "idle":
	
		sprite_index = spr_player_idle;
		idletimer++;
	break;
	
	case "walk":
	
		sprite_index = spr_player_walk;
	
	break;
	
	case "jump":
	
		sprite_index = spr_player_jump;
	
	break;
	
	case "fall":
	
		sprite_index = spr_player_fall;
	
	break;
	
	case "longidle":
	
		if(previousstate != state)
		{
			//sprite_index = choose(spr_player_long_idle_1, spr_player_long_idle_2);
			sprite_index = spr_player_long_idle_3;
		};
		
	break;
	
	case "land":
	
		sprite_index = spr_player_land;
	
	break;
	
	case "dash":
	
		//no sprite yet
		state = "fall";
		audio_play_sound(snd_woosh, 10, false);
	
	break;
	
	case "doublejump":
	
		sprite_index = spr_player_second_jump;
	
	break;
	
	
	
	
	
	
	
};























