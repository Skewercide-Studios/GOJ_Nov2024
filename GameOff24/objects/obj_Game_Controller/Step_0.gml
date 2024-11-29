/// @description Pause





if(is_paused)
{
	surface_set_target(application_surface);
	
	if(surface_exists(pauseSurf))
	{
		draw_surface(pauseSurf, 0, 0);
	}
	else
	{
		pauseSurf = surface_create(DISP_W, DISP_H);
		buffer_set_surface(pauseSurfBuffer, pauseSurf, 1);
		
	};
	surface_reset_target();
	
};

//Pause Game
if(keyboard_check_pressed(vk_escape) or close_window == true)
{
	if(room != rm_main_menu && room != rm_Startup )
	{
		if(!is_paused)
		{
			is_paused = true;
			//dodrawmenu = true;
			//Audio
			//if(audio_is_playing(snd_    );
			//{
				//audio_pause_sound(snd_   );
				
			//};
			
			
			instance_deactivate_all(true);
			
			
			audio_pause_all();
				
			
			pmenu = layer_sequence_create("HUD", GUI_W/2, GUI_H/2, seq_pmenu);

			
			
				
			
			pauseSurf = surface_create(RESO_WIDTH, RESO_HEIGHT);
			surface_set_target(pauseSurf);
			draw_surface(application_surface, 0, 0);
			surface_reset_target();
			
			//pmenu = layer_sequence_create("GUI", VIEW_CENTER_X, VIEW_CENTER_Y, seq_pause_menu);
			
			//Back up in Buffer
			if(buffer_exists(pauseSurfBuffer))
			{
				buffer_delete(pauseSurfBuffer);
			};
			pauseSurfBuffer = buffer_create(RESO_WIDTH * RESO_HEIGHT * 4, buffer_fixed, 1);
			buffer_get_surface(pauseSurfBuffer, pauseSurf, 1);
			
		}
		else //Unpause
		{
			is_paused = false;
			//dodrawmenu = false;
			audio_resume_all();
			if(sequence_exists(seq_pmenu))
			{
				layer_sequence_destroy(pmenu);
			};
			if(surface_exists(pauseSurf))
			{
				surface_free(pauseSurf);
			};
			if(buffer_exists(pauseSurfBuffer))
			{
				buffer_delete(pauseSurfBuffer);
			};
			
			//Audio Resume
			
			instance_activate_all();
			
		};
		close_window = false;
		
	};
};

