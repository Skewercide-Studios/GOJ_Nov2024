/// @description 



view_enabled = true;
view_visible[0] = true;
camera_set_view_size(CAM, RESO_WIDTH * windowscale, RESO_HEIGHT * windowscale);

if(room == rm_Startup)
{
	room_goto(rm_main_menu);
};
