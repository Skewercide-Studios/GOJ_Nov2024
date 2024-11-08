/// @description Movement

//Controls
xinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
yinput = keyboard_check_pressed(vk_space);
dash = keyboard_check_pressed(ord("S"));

//if(againstwall)
//{
//	grav = grav/4;
//}
//else
//{
//	grav = macro_grav;
//};


xtomove = xinput * move_speed;
ytomove = ytomove + grav;



if(onground or candoublejump or againstwall)
{
	if(yinput)
	{
		ytomove = jumpheight;
		
		if(didjump and candoublejump)
		{
			candoublejump = false;
		};
		
		didjump = true;
	};
	
};

if(dash)
{
	xtomove += dash_distance * sign(xinput);
};











if(xinput != 0) //X Movement Collision
{
	
	if(place_meeting(x + xtomove, y, [obj_Collision_Parent,wallTiles]))
	{
		
		while(!place_meeting(x + sign(xtomove), y, [obj_Collision_Parent,wallTiles]))
		{
			x += sign(xtomove);
			
		};
		
		xtomove = 0; //DO NOT TOUCH, WILL BREAK	<--------
		
	};
};


if(place_meeting(x, y + ytomove, [obj_Collision_Parent,wallTiles])) //Y Movement Collision
{
	while(!place_meeting(x, y + sign(ytomove), [obj_Collision_Parent,wallTiles]))
	{
		y += sign(ytomove);
	};
	
	ytomove = 0; //DO NOT TOUCH, WILL BREAK	<--------
};




if(xinput != 0)
{
	image_xscale = xinput;
};

x += xtomove;
y += ytomove;


if(place_meeting(x, y + 1, [obj_Collision_Parent,wallTiles]))
{
	onground = true;
	didjump = false;
	candoublejump = true;
}
else
{
	onground = false;
};

if(place_meeting(x + 1, y, [obj_Collision_Parent,wallTiles]) or place_meeting(x - 1, y, [obj_Collision_Parent,wallTiles]))
{
	againstwall = true;
}
else
{
	againstwall = false;
};
show_debug_message(againstwall);

