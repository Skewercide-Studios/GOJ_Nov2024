/// @description Movement

//Controls
xinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
yinput = keyboard_check_pressed(vk_space);
dash = keyboard_check_pressed(ord("S"));




xtomove = xinput * move_speed;
ytomove = grav;



if(onground)
{
	if(yinput)
	{
		ytomove = jumpheight;
		
	};
	
};
















if(xinput != 0) //X Movement Collision
{
	
	if(place_meeting(x + xtomove, y, obj_Collision_Parent))
	{
		
		while(!place_meeting(x + sign(xtomove), y, obj_Collision_Parent))
		{
			x += sign(xtomove);
			
		};
		
		xtomove = 0; //DO NOT TOUCH, WILL BREAK	<--------
		
	};
};


if(place_meeting(x, y + ytomove, obj_Collision_Parent)) //Y Movement Collision
{
	while(!place_meeting(x, y + sign(ytomove), obj_Collision_Parent))
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



