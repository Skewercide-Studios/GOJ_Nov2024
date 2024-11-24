/// @description 
if(instance_exists(obj_camera_place_holder))
{
	var _cspd = .2;
	var _cx = VIEW_X;
	var _cy = VIEW_Y;
	var _x = clamp(obj_camera_place_holder.x - VIEW_W /2, 0, room_width - VIEW_W);
	var _y = clamp(obj_camera_place_holder.y - VIEW_H /2, 0, room_height - VIEW_H);
	camera_set_view_pos(CAM, lerp(_cx, _x, _cspd), lerp(_cy, _y, _cspd));
	
};