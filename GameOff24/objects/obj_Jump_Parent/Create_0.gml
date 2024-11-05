/// @description Insert description here
// You can write your code in this editor
/// @description 

//Main Stats
grav = 100; // gravity FORCE [ something per second squared]
move_speed = 5;
jump_speed = -5*grav;
y_speed = 0; // jump SPEED [something per second]
jump_time = 0;
jump_time_max = 0.2; // [seconds] maximum time of speed application
max_speed = 10; // [something per second]
jump_count = 0;

//Game Stats
didjump = false;
diddubjump = false;
diddash = false;
xtomove = 0;
delta_y = 0;
onground = true;

//Controls
xinput = 0; //A or D
yinput = 0; //Space
dash = 0; //S
dubjump = 0; //Space

is_jumping = false;





