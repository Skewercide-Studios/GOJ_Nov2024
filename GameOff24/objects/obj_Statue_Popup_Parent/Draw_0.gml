/// @description 
draw_self();

if(player_nearby)
{
	scr_text_align(5);
	draw_set_font(fnt_small);
	draw_set_alpha(.5);
	draw_text(x, y + infooffset, "Press E");

	
};
draw_set_alpha(1);
