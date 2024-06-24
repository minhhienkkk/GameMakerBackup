 hsp = 0
vsp = 0
sp = 4
grv = 0.2 

  
hitfrom = 0
hp = 5
flash = 0

image_blend = c_white



gun_ = instance_create_layer(x, y, "gun", o_enemy_gun); // Create gun object
gun_ .parent = id; // Set enemy as the gun's parent
     