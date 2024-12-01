/// @description 



view_enabled = true;
view_visible[0] = true;
camera_set_view_size(CAM, RESO_WIDTH * windowscale, RESO_HEIGHT * windowscale);

if(room == rm_Startup)
{
	room_goto(rm_main_menu);
};
if(room == rm_Room_Main)
{
	switch prev_room
	{
		
		case rm_Room_Satyr:
		
			obj_Player_Parent.x = inst_satyr_door.x;
			obj_Player_Parent.y = inst_satyr_door.y;
		
		break;
	
		case rm_Room_Dryad:

			obj_Player_Parent.x = inst_dryad_door.x;
			obj_Player_Parent.y = inst_dryad_door.y;

		break;
	
		case rm_Room_Centaur:
	
			obj_Player_Parent.x = inst_centaur_door.x;
			obj_Player_Parent.y = inst_centaur_door.y;
		
	
		break;
		
		
		case noone:
		
		
		
		break;
		
	};
	
};


