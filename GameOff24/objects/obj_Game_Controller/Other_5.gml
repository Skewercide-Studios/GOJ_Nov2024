/// @description 


if(surface_exists(pauseSurf))
{
	surface_free(pauseSurf);
};
if(buffer_exists(pauseSurfBuffer))
{
	buffer_delete(pauseSurfBuffer);
};

prev_room = room;