/// @description 
draw_self();

if(player_nearby)
{
	draw_set_color(c_black);
	scr_text_align(5);
	draw_set_font(fnt_small_bold);
	draw_set_alpha(.5);
	draw_text(x, y + infooffset, "Press E");

	
};
draw_set_alpha(1);
draw_set_color(c_white);

