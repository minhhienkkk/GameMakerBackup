 /// @description image_angle follow player



dir = point_direction(x,y,global.opx,global.opy)
image_angle = dir


recoil = max(0,recoil-1 )

  
 
 

if (global.opx> x)
	{
		image_yscale = 1
	}
else
	{ 
		image_yscale = -1	
	}