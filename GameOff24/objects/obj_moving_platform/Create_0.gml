/// @description 

move_speed = 2;
startx = x;
starty = y;
stop_time = 60; //frames
ytomove = 0;
maxydistance = 100;
maxmovedown = starty + maxydistance;
maxmoveup = starty - maxydistance;

maxditancetoobj = 10;
dir = 1;
if(dir > 0)
{
	state = "down";
}
else
{
	state = "up";
};

