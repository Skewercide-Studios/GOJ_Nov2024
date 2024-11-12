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

maxditancetoobj = 10;
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
	if(dir > 0)
	{
		state = "left";
	}
	else
	{
		state = "right";
	};
};

