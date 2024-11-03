/// @description Movement

//Controls
xinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
yinput = keyboard_check_pressed(vk_space);
dash = keyboard_check_pressed(ord("S"));




xtomove = xinput * move_speed;
ytomove = yinput * jumpheight;




if(xinput != 0 && yinput != 0)
{
	
	if(collision_point(x + xtomove, y, obj_Collision_Parent, false, true))
	{
		xtomove = 0;
		while(!collision_point(x + xinput, y, obj_Collision_Parent, false, true))
		{
			xtomove = xinput;
			
		};
	};
	
	
	
	
	


	
}













if(xinput != 0)
{
	image_xscale = xinput;
};


x += xtomove;
y += ytomove;



