/// @description 

if(Vertical)
{

	switch state
	{
		case "down":
			
			if(y >= maxmovedown)
			{
				
				state = "up";
				break;
				
			};
			
			var o_obj = instance_place(x, y - 1, obj_Player_Parent);
			with o_obj
			
			{
				y += other.move_speed;
			};
			
			y += move_speed;
			
		break;
		
		
		case "up":
		
			if(y <= maxmoveup)
			{
				state = "down";
				break;
			};
			
			var o_obj_2 = instance_place(x, y - 1, obj_Player_Parent);
			with o_obj_2
			
			{
				y -= other.move_speed;
			};
			
			y -= move_speed;
		
		break;



		
	};



};
if(Horizontal)
{
	
	switch state
	{
		case "right":
			
			if(x >= maxmoveright)
			{		
				state = "left";
				break;	
			};
			
			var o_obj = instance_place(x, y - 1, obj_Player_Parent);
			with o_obj
			
			{
				x += other.move_speed;
			};
			
			x += move_speed;
			
		break;
		
		
		case "left":
		
			if(x <= maxmoveleft)
			{
				state = "right";
				break;
			};
			
			var o_obj_2 = instance_place(x, y - 1, obj_Player_Parent);
			with o_obj_2
			
			{
				x -= other.move_speed;
			};
			
			x -= move_speed;
		
		break;

	};

};


