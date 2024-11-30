/// @description Unlock Door
if(global.has_statue_dryad && player_nearby && mouse_check_button_pressed(mb_right))
{
	sprite_index = spr_dryad_statue_solved;
	
	solved = true;
	
};
