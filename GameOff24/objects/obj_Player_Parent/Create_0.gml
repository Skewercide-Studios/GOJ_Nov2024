/// @description 

//Main Stats
move_speed = 5;
dash_distance = 30;
state = "idle";
jumpheight = -10;
longidle = false;
longidletimermax = 300;
idletimer = 0;

//Game Stats
wall_grav = .05;
macro_grav = .5
grav = macro_grav;
didjump = false;
candoublejump = true;
diddoublejump = false;
diddash = false;
xtomove = 0;
ytomove = 0;
onground = true;
againstwall = false;
canwallcling = true;
didwallcling = false;
freeze = false;
freeze_y = false;
freeze_x = false;
grav_on = true;
previousstate = " ";

//Controls
xinput = 0; //A or D
yinput = 0; //Space
dash = 0; //S
dubjump = 0; //Space

wallTiles = layer_tilemap_get_id("WallTiles");
test = layer_tilemap_get_id("ts_test");

array_collision = [ obj_Collision_Parent, wallTiles ];









