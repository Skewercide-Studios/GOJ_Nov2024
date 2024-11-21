/// @description 

if(place_meeting(x, y - 1, obj_Player_Parent))
{
	pontop = true;
}
else
{
	pontop = false;
};



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
			
			if(place_meeting(x,y + 1, obj_Player_Parent))
			{
				obj_Player_Parent.y += 5;
			};
			if(pontop) //As long as Player is ontop, keep movement in sync
			{
				obj_Player_Parent.y = (y + move_speed) - (sprite_height/2) ;			
			}

			
						
			y += move_speed;
			
		break;
		
		
		case "up":
		
			if(y <= maxmoveup)
			{
				state = "down";
				break;
			};
			
			
			
			if(pontop)
			{
		
				obj_Player_Parent.y = (y - move_speed) - (sprite_height/2);
			};
			//--------
			
			
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
			
			// --- Collision ---
			//Bottom Left, Top Right
			if(collision_rectangle((x - p_half_width) + 1, y + p_half_height, (x + p_half_width) + 1, (y - p_half_height) - 1, obj_Player_Parent, false, true))
			{
				if(obj_Player_Parent.x > (x + p_half_width)) //Player is to the Right of platform
				{
					//obj_Player_Parent.x += move_speed + 1;
				};
				if(obj_Player_Parent.x < (x - p_half_width)) //Player is to the Left of platform
				{
					
				};
				if(obj_Player_Parent.y < (y - p_half_height)) //Player is Above the platform
				{
					//obj_Player_Parent.x += move_speed;
					
				};
					
			}
			else
			{
				
			};
			
			if(place_meeting(x, y - 1, obj_Player_Parent))
			{
				obj_Player_Parent.x += move_speed;
			};
			
			x += move_speed;
			
		break;
		
		
		case "left":
		
			if(x <= maxmoveleft)
			{
				state = "right";
				break;
			};
			
			
			// --- Collision ---
			//Bottom Left, Top Right
			if(collision_rectangle((x - p_half_width) + 1, y + p_half_height, (x + p_half_width) + 1, (y - p_half_height) - 1, obj_Player_Parent, false, true))
			{
				if(obj_Player_Parent.x > (x + p_half_width)) //Player is to the Right of platform
				{
					
				};
				if(obj_Player_Parent.x < (x - p_half_width)) //Player is to the Left of platform
				{
					//obj_Player_Parent.x -= move_speed - 1;
				};
				if(obj_Player_Parent.y < (y - p_half_height)) //Player is Above the platform
				{
					//obj_Player_Parent.x -= move_speed;
				};
					
			}
			else
			{
				
			};
			
			if(place_meeting(x, y - 1, obj_Player_Parent))
			{
				obj_Player_Parent.x -= move_speed;
			};
			
			x -= move_speed;
		
		break;

	};

};


