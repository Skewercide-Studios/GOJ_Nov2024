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
	
	scr_text_box(spr_text_box, spr_info); //Need to set Identifier
	scr_text_align(5); //Numpad Alignment
	draw_set_font(fnt_normal);
	if(keyboard_check_pressed(vk_space)) //If player press Space
	{
		if(instance_exists(obj_next_button))
		{	
			obj_next_button.image_index++;
			alarm_set(1, 10);
		};
		
		
	};
	
	
	draw_text_ext(gui_center_width, gui_text_box_y, Text, text_seperation, text_wrap_width);
	
	
	
	
}

show_debug_message(obj_Player_Parent.freeze);