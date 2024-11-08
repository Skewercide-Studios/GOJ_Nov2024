/// @description Insert description here
// You can write your code in this editor
/// @description 

//Main Stats
grav = 100; // gravity FORCE [ something per second squared]
move_speed = 5;
jump_speed = -5*grav;
y_speed = 1; // jump SPEED [something per second]
jump_time = 0;
jump_time_max = 0.2; // [seconds] maximum time of speed application
max_speed = 5; // [something per second] // default 10
min_delta = 0.1;
ground_decel = -10;	// deceleration on ground [something per seconds squared]
air_decel = -4;		// deceleration while in air [ something per seconds squared]
accel = 10;			// normal acceleration (on ground) [ something per seconds squared]
jump_count = 0;
last_dir_x = 0;
is_moving_x = false;

//Game Stats
didjump = false;
diddubjump = false;
diddash = false;
delta_x = 0;
delta_y = 0;
onground = true;

//Controls
xinput = 0; //A or D
yinput = 0; //Space
dash = 0; //S
dubjump = 0; //Space

is_jumping = false;





