/// @description 
if(!instance_exists(obj_Player_Parent))
{
	exit;
};
if(dodrawbox)
{
	obj_Player_Parent.freeze = true;
	
	if(!instance_exists(obj_next_button))
	{
		next_button = instance_create_layer(gui_center_width + 210, gui_text_box_y + 50, "HUD", obj_next_button);
	};
	
	scr_text_box(spr_text_box, spr_test_player); //Need to set Identifier
	scr_text_align(5); //Numpad Alignment
	draw_set_font(fnt_normal);
	if(keyboard_check_pressed(vk_space))
	{
		if(instance_exists(obj_next_button))
		{	
			obj_next_button.image_index++;
			alarm_set(1, 10);
		};
	
	};
	if(cur_string > array_length(cur_text_array) - 1)
	{
		cur_string = 0;
		dodrawbox = false;
		if(instance_exists(obj_next_button))
		{
			instance_destroy(next_button);
		};
	}
	else
	{
		draw_text_ext(gui_center_width, gui_text_box_y, cur_text_array[cur_string], text_seperation, text_wrap_width);
	};
	
	
	
}
else
{
	obj_Player_Parent.freeze = false;
	
};

