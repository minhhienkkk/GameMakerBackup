   with (other)
{
	hp -= 1	
    flash = 3
    hitfrom = other.direction
    audio_play_sound(hit,5,0)
	 //hsp = lengthdir_x(3,hitfrom)
	 //vsp = lengthdir_y(3,hitfrom)
}
	 repeat(100)
	{
	a= instance_create_layer(x,y,"Instances",o_blood)
		
		scale = random_range(0.2,0.8);
		a.image_xscale = scale; 
		a.image_yscale = scale; 
		a.direction = image_angle + random_range(-90,90)
		a.gravity = 0.2; 
		a.speed=random_range(4,20)
		
	}



instance_destroy()