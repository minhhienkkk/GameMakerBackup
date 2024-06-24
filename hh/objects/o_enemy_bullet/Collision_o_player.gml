/// @description Insert description here
// You can write your code in this editor
 
   with(other)
    {
	    dir= other.direction
	    hsp = lengthdir_x(3,dir)
	    vsp = lengthdir_y(3,dir)
		audio_play_sound(hit,5,0)
		hp--
    }
	
    instance_destroy()
	
	audio_play_sound(choose(head_explode1,head_explode2,head_explode3,head_explode4),99,0)

	 repeat(100)
	{
	
		b= instance_create_layer(x,y,"Instances",o_blood)
		
		scale = random_range(0.2,0.8);
		b.image_xscale = scale; 
		b.image_yscale = scale; 
		b.direction = image_angle + random_range(-135,135)
		b.gravity = 0.2; 
		b.speed=random_range(4,12)
		
	}
	