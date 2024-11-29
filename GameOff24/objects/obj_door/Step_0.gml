/// @description 

if(statue.open = true)
{
	image_index += anim_speed;
};


if(can_enter)
{
	if(keyboard_check_pressed(ord("W")))
	{
		room_goto(connected_room);
	};
};
