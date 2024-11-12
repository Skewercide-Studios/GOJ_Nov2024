/// @description 

if(place_meeting(x, y - 1, obj_Player_Parent))
{
	destroy = true;
};
if(destroy)
{
	image_index += imgspeed;
};
