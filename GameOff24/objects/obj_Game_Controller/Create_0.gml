/// @description 

randomize();


pmenu = 0;
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
 




global.has_statue_tutorial = false;
global.has_statue_satyr = false;
global.has_statue_dryad = false;
global.has_statue_centaur = false;
global.has_bow = false;
global.has_arrow = false;

prev_room = noone;

music_timer = 0;
music_max_timer = 8000; //frames, 


global.satyr_door_unlocked = false;
global.dryad_door_unlocked = false;
global.centaur_door_unlocked = false;


