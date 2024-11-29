/// @description 

move_speed = random_range(1,2);
startx = x;
starty = y;
stop_time = 60; //frames
ytomove = 0;
xtomove = 0;
maxydistance = 100;
maxxdistance = 50;
maxmovedown = starty + maxydistance;
maxmoveup = starty - maxydistance;
maxmoveleft = startx - maxxdistance;
maxmoveright = startx + maxxdistance;
pontop = false;

maxditancetoobj = 10;

p_half_width = sprite_width/2;
p_half_height = sprite_height/2;

sprite_index = choose(spr_platform_1, spr_platform_2, spr_platform_3, spr_platform_4);
//sprite_index = spr_platform_set2_2;
dir = choose(-1, 1);
if(Vertical)
{
	if(dir > 0)
	{
		state = "down";
	}
	else
	{
		state = "up";
	};
}
else 
{
	//sprite_index = choose(spr_platform_set2_1, spr_platform_set2_2, spr_platform_set2_3);
	if(dir > 0)
	{
		state = "left";
	}
	else
	{
		state = "right";
	};
};

