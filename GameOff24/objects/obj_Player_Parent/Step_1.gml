/// @description Movement
previousstate = state;
if(freeze)
{
	exit;
};

//Controls
xinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
yinput = keyboard_check_pressed(vk_space);
dash = keyboard_check_pressed(ord("S"));

if(againstwall and ytomove > 0 and xinput != 0)// and canwallcling)
{
	grav = wall_grav;
	//didwallcling = true;
}
else
{
	grav = macro_grav;
};
if(place_meeting(x, y + 1, array_collision)) //Is On Ground **************
{

	onground = true;
	didjump = false;
	candoublejump = true;
	//canwallcling = true;
	//didwallcling = false;
	if(xinput == 0)
	{
		state = "idle"
	}
	else
	{
		state = "walk";
	};
	
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
	//if(didwallcling)
	//{
	//	canwallcling = false;
	//};
};

xtomove = xinput * move_speed;

if(grav_on)
{
	ytomove = ytomove + grav;
};


if(onground or candoublejump or againstwall)
{
	if(yinput)
	{
		
		
		if(didjump and candoublejump)
		{
			candoublejump = false;
			
			ytomove = jumpheight;
		};
		if(!didjump)
		{
		
			didjump = true;
			ytomove = jumpheight;
		};
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



if(place_meeting(x, y + 1, obj_moving_platform))
{
	grav_on = false; //Have to override Gravity to keep player from bouncing while going down
	
}
else
{
	grav_on = true;
	
};










//move_and_collide(xtomove, ytomove, array_collision);






//State Stuff
if(xinput != 0)
{
	idletimer = 0;
	
};
if(idletimer >= longidletimermax)
{
	state = "longidle";
	
};
if(yinput)
{
	if(!candoublejump)
	{
		state = "doublejump";
		
	};
	state = "jump";
	
};











