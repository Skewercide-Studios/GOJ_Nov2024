/// @description 

randomize();



//Window
htmlscale = 1;
windowscale = 2;
window_set_size(RESO_WIDTH * windowscale, RESO_HEIGHT * windowscale);
surface_resize(application_surface, RESO_WIDTH * windowscale, RESO_HEIGHT * windowscale);
isHtml5 = os_browser != browser_not_a_browser;
if(isHtml5)
{
	
	window_set_rectangle(0, 0, display_get_width()/htmlscale, display_get_height()/htmlscale);
};
alarm_set(11, 1); //Center Window

//Pausing
is_paused = false;
pauseSurf = -1;
pauseSurfBuffer = -1;
close_window = false;
 





