/// @description Movement

//Controls
xinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
yinput = keyboard_check_pressed(vk_space);
dash = keyboard_check_pressed(ord("S"));

if(againstwall and ytomove > 0 and xinput != 0)
{
	grav = wall_grav;
}
else
{
	grav = macro_grav;
};


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
	
	if(place_meeting(x + xtomove, y, array_collision))
	{
		
		while(!place_meeting(x + sign(xtomove), y, array_collision))
		{
			x += sign(xtomove);
			
		};
		
		xtomove = 0; //DO NOT TOUCH, WILL BREAK	<--------
		
	};
};


if(place_meeting(x + sign(xtomove), y + ytomove, array_collision)) //Y Movement Collision
{
	while(!place_meeting(x + sign(xtomove), y + sign(ytomove), array_collision))
	{
		y += sign(ytomove);
	};
	
	ytomove = 0; //DO NOT TOUCH, WILL BREAK	<--------
};




if(xinput != 0)
{
	if(xinput > 0)
	{
		sprite_index = right;
	}
	else
	{
		sprite_index = left;
	};
};

x += xtomove;
y += ytomove;


//move_and_collide(xtomove, ytomove, array_collision);

if(place_meeting(x, y + 1, array_collision))
{
	onground = true;
	didjump = false;
	candoublejump = true;
}
else
{
	onground = false;
};

if(place_meeting(x + 1, y, array_collision) or place_meeting(x - 1, y, array_collision))
{
	againstwall = true;
}
else
{
	againstwall = false;
};


