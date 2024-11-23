/// @description 

if(dodrawbox)
{
	obj_Player_Parent.freeze = true;
	scr_text_box(spr_text_box, spr_test_player); //Need to set Identifier
	scr_text_align(5); //Numpad Alignment
	draw_set_font(fnt_normal);
	draw_text_ext(gui_center_width, gui_text_box_y, global.array_text_tutorial[cur_string], text_seperation, text_wrap_width);
	
	if(!instance_exists(obj_next_button))
	{
		next_button = instance_create_layer(gui_center_width + 210, gui_text_box_y + 50, "HUD", obj_next_button);
	};

	
}
else
{
	obj_Player_Parent.freeze = false;
	
};

