
#macro gui_center_width display_get_gui_width()/2
#macro gui_text_box_y 450
#macro gui_identity_offset 260

#macro box_xscale 6
#macro box_yscale 2
#macro identifier_xscale 2
#macro identifier_yscale 2

#macro text_seperation 17
#macro text_wrap_width 300

						//Sprite for Text Box, Sprite for who's "talking" 
function scr_text_box( _box_sprite, _identity_sprite)
{
	
	
	
	draw_sprite_ext(_box_sprite, 0, gui_center_width, gui_text_box_y, box_xscale, box_yscale, 0, c_white, 1);
	draw_sprite_ext(spr_identity_box_2, 0, gui_identity_offset, gui_text_box_y, identifier_xscale, identifier_yscale, 0, c_white, 1);
	draw_sprite_ext(_identity_sprite, 0, gui_identity_offset,gui_text_box_y, identifier_xscale, identifier_yscale, 0, c_white, 1);
	
	
	
		
	
	
	
};






