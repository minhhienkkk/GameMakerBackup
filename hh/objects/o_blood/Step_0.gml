image_angle = direction

if  collision_line(x,y,x+hspeed,y+vspeed,oWall,false,false)
{
if (surface_exists(global.damagemask)) {
	
    surface_set_target(global.damagemask)
    
    gpu_set_blendmode(bm_subtract)
    draw_set_colour(c_black)
    draw_sprite_ext(Sprite14,0,x+hspeed,y+vspeed,image_xscale,image_yscale,image_angle,c_white,1)
    gpu_set_blendmode(bm_normal)
    
    surface_reset_target();
}
if (irandom(1)==1) {
    instance_create_layer(x+hspeed,y+vspeed,layer,o_trickle)
}
instance_destroy()
}
 
 if (bbox_bottom > room_height)
{
    instance_destroy()
	show_debug_message("xoa roi")
}