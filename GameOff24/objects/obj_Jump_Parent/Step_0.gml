/// @description Insert description here
// You can write your code in this editor
/// @description Movement

//Controls
xinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
yinput = keyboard_check_pressed(vk_space);
dash = keyboard_check_pressed(ord("S"));

xtomove = xinput * move_speed;

var _dt = delta_time / 1000000;

if(onground)
{
	y_speed = 0;
	if(yinput)
	{
		onground = false;
		jump_time = 0;
		is_jumping = true;
		show_debug_message("jump !!!");
	}
} else {
	y_speed += _dt * grav;
}

if (is_jumping) {
	is_jumping = jump_time < jump_time_max;
	jump_time += _dt;
	y_speed = jump_speed;
	show_debug_message("jumping for {0} ms now !!!", jump_time * 1000);
}

if abs(y_speed) > max_speed 
{
	y_speed = max_speed * sign(y_speed);
}

delta_y += y_speed * _dt;



if(place_meeting(x + xtomove, y, obj_Collision_Parent))
{
	while(place_meeting(x + xtomove, y, obj_Collision_Parent))
	{
		xtomove /= 2;
		if int(xtomove) == 0 { break; }
	}
}

if(place_meeting(x, y + delta_y, obj_Collision_Parent)) //Y Movement Collision
{
	while(place_meeting(x, y + delta_y, obj_Collision_Parent))
	{
		delta_y /= 2;
	}
	show_debug_message("on_ground !!!");
	onground = true;
	y += delta_y;
	delta_y = 0;
}

if(xinput != 0)
{
	image_xscale = xinput;
}
show_debug_message("x: {0}, y: {1}, mouse_y: {2}, on_ground: {3}, delta_y: {4}, yspeed: {5} dt (ms): {6}", x, y, mouse_y, onground, delta_y, y_speed, _dt * 1000);

x += xtomove;
if ( not onground ) {
	y += delta_y;
}


