/// @description 
mx = device_mouse_x_to_gui(0);
my = device_mouse_y_to_gui(0)

if(place_meeting(mx, my, self))
{
	mouse_over = true;
	image_index ++;
	audio_play_sound(snd_button, 10, false);
}
else
{
	image_index --;
	mouse_over = false;
};

if(mouse_over && mouse_check_button_pressed(mb_left))
{
	event_user(1);
};
