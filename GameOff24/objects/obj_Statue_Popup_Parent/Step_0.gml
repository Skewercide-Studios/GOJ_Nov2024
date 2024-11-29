/// @description 




if(did_player_click)
{
	obj_Text_Controller.text_to_draw = text_group;
	obj_Text_Controller.dodrawbox = true;
	did_player_click = false;
	if(destroy_on_finish)
	{
		alarm_set(2, 5);
	};
	
};







