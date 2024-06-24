 /// @description shoot player, recoil

if (instance_exists(o_player))
{
	
recoil = 4
col = collision_line(x, y, global.opx, global.opy, oWall, true, false) 

if (distance_to_object(o_player) < max_distance) && (!col)
{
	with instance_create_layer(x,y,"bullets",o_enemy_bullet )	
	{ 
		audio_play_sound(e_shoot,5,0)
		speed = 25
		direction = other.image_angle + random_range(-1,1)
		image_angle = direction
	}

recoil_x = lengthdir_x(recoil,image_angle)
recoil_y =  lengthdir_y(recoil ,image_angle)


x -= recoil_x
y -= recoil_y
 
} 
}

alarm[0] = game_get_speed(gamespeed_fps) * 0.5