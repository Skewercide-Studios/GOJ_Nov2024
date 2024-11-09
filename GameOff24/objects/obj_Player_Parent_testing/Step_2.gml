/// @description Camera


if(instance_exists(obj_Player_Parent_testing))
{
	var _cspd = .2;
	var _cx = VIEW_X;
	var _cy = VIEW_Y;
	var _x = clamp(obj_Player_Parent_testing.x - VIEW_W /2, 0, room_width - VIEW_W);
	var _y = clamp(obj_Player_Parent_testing.y - VIEW_H /2, 0, room_height - VIEW_H);
	camera_set_view_pos(CAM, lerp(_cx, _x, _cspd), lerp(_cy, _y, _cspd));
	
};













