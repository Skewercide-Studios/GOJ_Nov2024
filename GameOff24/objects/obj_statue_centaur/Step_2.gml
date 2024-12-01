/// @description Unlock Door


if(global.has_arrow && global.has_bow)
{
	global.has_statue_centaur = true;
};



if(global.has_statue_centaur && player_nearby && mouse_check_button_pressed(mb_right))
{
	sprite_index = spr_centaur_statue_solved;
	
	solved = true;
	
};


