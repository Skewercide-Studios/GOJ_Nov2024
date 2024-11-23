/// @description 

if(collision_rectangle(x - 20, y + 5, x + 20, y + 5, obj_Player_Parent, false, true))
{
	player_nearby = true;
	
};


if(player_nearby && keyboard_check_pressed(ord("E")))
{
	did_player_click = true;
};
