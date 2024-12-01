/// @description 

// Inherit the parent event
event_inherited();
if(did_player_click)
{
	if(!instance_exists(obj_Tutorial_Satyr))
	{
		instance_create_layer(obj_placeholder_satyr.x, obj_placeholder_satyr.y, "inst_level_design_over", obj_Tutorial_Satyr);
	};
};