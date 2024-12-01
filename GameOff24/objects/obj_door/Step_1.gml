/// @description 



if(collision_rectangle(x - disx, y + disy, x + disx, y - disy, obj_Player_Parent, false, true))
{
	player_nearby = true;
	
}
else
{
	player_nearby = false;
};


if(unlock)
{
	image_index = 5;
	can_enter = true;
};
