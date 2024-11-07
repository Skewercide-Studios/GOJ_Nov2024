/// @description Insert description here
// You can write your code in this editor
/// @description Movement

//Controls
xinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
yinput = keyboard_check_pressed(vk_space);
dash = keyboard_check_pressed(ord("S"));


var _dt = delta_time / 1000000;

// check if still moving in x direction
is_moving_x = is_moving_x and abs(delta_x) > min_delta;

if (onground)
{
	if (xinput != 0)
	{
		// accellerate while key is pressed
		delta_x += sign(xinput) * _dt * accel;
		show_debug_message("accelerating_ground by {0} ({1})", sign(xinput) * _dt * accel, sign(xinput)*accel);
		// remember direction (for stopping on ground/in air)
		last_dir_x = xinput;
		is_moving_x = true;
	}
	else if is_moving_x
	{
		// decelerate if key is released
		delta_x += sign(last_dir_x) * _dt * ground_decel;
		// stop if speed too slow
		if sign(last_dir_x) != sign(delta_x)
		{
			is_moving_x = false;
			delta_x = 0;
		}
	}
}
else
{
	// turn in midair
	// if there is a direction-change, dampen by 50 pct
	if (xinput != 0) && ( sign(xinput) != sign(last_dir_x) )
	{
		delta_x = sign(xinput) * sign(delta_x) * delta_x * 0.5;
		// remember direction to apply damping correctly
		last_dir_x = xinput;
	}
	if is_moving_x {
		// decelerate while in air
		delta_x += sign(last_dir_x) * _dt * air_decel;
		show_debug_message("decelerating_air by {0} ({1})", sign(xinput) * _dt * air_decel, sign(xinput)*air_decel);
	}
}

// limit delta to max speed
delta_x = clamp(delta_x, -max_speed, max_speed);
// dont move if not moving
if not is_moving_x {
	delta_x = 0;
}

// double jump enabled, if player is on the upwards during the first jump
var _can_doublejump =  (y_speed < 0) and (jump_count == 1);

if(onground or _can_doublejump)
{
	y_speed = 0;
	if(yinput)
	{
		if _can_doublejump {
			show_debug_message("doublejump!!!");
		}
		onground = false;
		jump_time = 0;
		++jump_count;
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



if(place_meeting(x + delta_x, y, obj_Collision_Parent))
{
	show_debug_message("in wall");
	delta_x = 0;
	is_moving_x = false;
}

if(place_meeting(x, y + delta_y, obj_Collision_Parent)) //Y Movement Collision
{
	show_debug_message("on_ground !!!");
	jump_count = 0;
	onground = true;
	delta_y = 0;
}

if(xinput != 0)
{
	image_xscale = xinput;
}

x += delta_x;
if ( not onground ) {
	y += delta_y;
}



