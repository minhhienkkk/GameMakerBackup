 

        
vsp += grv
    
    
if place_meeting(x+hsp,y,oWall)
{
    while(!place_meeting(x+sign(hsp),y,oWall))
    {
		x+=sign(hsp)	
    }
    hsp = 0
}
    
    

if place_meeting(x,y+vsp,oWall)
{ 
	while(!place_meeting(x,y+sign(vsp),oWall))
     {
			y+=sign(vsp)	
     }
        
		if (snLand) 
	{
		audio_sound_pitch(landing11,random_range(0.5,1.5))
		audio_play_sound(landing11,10,false)
		snLand = !snLand
		
		 repeat(100)
	{
 a =  instance_create_layer(x,y,"Instances",o_blood)

		scale = random_range(0.2,0.8);
		a.image_xscale = scale; 
		a.image_yscale = scale; 
		a.direction = random(360)
		a.gravity = 0.2; 
		a.vspeed = random_range(-vsp,vsp); 
		a.hspeed = random_range(-hsp,hsp);

	}	
		
	}
		
	
		
		
	vsp= 0
	hsp = lerp(hsp, 0 ,0.08)
	image_index = 1	

	
	
}


  x+= hsp
  y+=vsp
     
     
        


