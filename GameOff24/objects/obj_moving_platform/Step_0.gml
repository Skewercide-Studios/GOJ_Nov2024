/// @description 


if(collision_rectangle((x - p_half_width), y + p_half_height, (x + p_half_width), y, obj_Player_Parent, false, true))
{
	if(obj_Player_Parent.x > (x + p_half_width)) //Player is to the Right of platform
	{
		obj_Player_Parent.x += move_speed;
		obj_Player_Parent.y += obj_Player_Parent.grav;
	};
	if(obj_Player_Parent.x < (x - p_half_width)) //Player is to the Left of platform
	{
		obj_Player_Parent.x -= move_speed;
		obj_Player_Parent.y += obj_Player_Parent.grav;
	};
};