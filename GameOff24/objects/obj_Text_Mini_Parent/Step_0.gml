/// @description 

if(collision_rectangle(x - disx, y + disy, x + disx, y - disy, obj_Player_Parent, false, true))
{
	player_nearby = true;
	
}
else
{
	player_nearby = false;
};


if(player_nearby && keyboard_check_pressed(ord("E")))
{
	//obj_Player_Parent.freeze = true;
	dodrawbox = true;
	alarm_set(2, 5);
};







