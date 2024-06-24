 /// @description hp enemy below 0 and make gun follow them
if (hp <= 0)
{
   with( instance_create_layer(x,y,layer,o_enemy_dead))
    {
	    direction = other.hitfrom
	    hsp = lengthdir_x(3,direction)
	    vsp = lengthdir_y(3,direction)-4
	    image_xscale = sign(hsp)
    }
    instance_destroy()
	instance_destroy(gun_)
}

if (instance_exists(gun_))
{
	 gun_.x = x
	 gun_.y = y+10
}  

if (global.opx > x)
	{
		image_xscale = 1
	}
else
	{ 
		image_xscale = -1	
	}