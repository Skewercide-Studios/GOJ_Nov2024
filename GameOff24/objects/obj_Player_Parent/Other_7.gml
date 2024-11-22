/// @description 


switch state
{
	
	case "idle":
	
	
	
	break;
	
	case "walk":
	
	
	
	break;
	
	case "jump":
	
		state = "fall";
	
	break;
	
	case "fall":
	
	
	
	break;
	
	case "longidle":
	
		state = "idle";
		idletimer = 0;
		
	break;
	
	case "doublejump":
	
		state = "fall";
		
	break;
	
	
};

