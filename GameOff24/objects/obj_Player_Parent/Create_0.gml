/// @description 

//Main Stats
move_speed = 5;
dash_distance = 30;

jumpheight = -10;

//Game Stats
wall_grav = .05;
macro_grav = .5
grav = macro_grav;
didjump = false;
candoublejump = true;
diddash = false;
xtomove = 0;
ytomove = 0;
onground = true;
againstwall = false;

//Controls
xinput = 0; //A or D
yinput = 0; //Space
dash = 0; //S
dubjump = 0; //Space

wallTiles = layer_tilemap_get_id("WallTiles");
test = layer_tilemap_get_id("ts_test");

array_collision = [ obj_Collision_Parent, wallTiles ];

right = spr_test_player;
left = spr_test_player_1;

