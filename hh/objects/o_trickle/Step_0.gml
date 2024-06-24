//Gravity
y += myspeed

//Make sure I am still on the wall, if not spawn a new drop
if (! collision_point( x, y, oWall, false, false )) {

  var newblood = instance_create_layer(x,y+2,layer,o_blood);
  newblood.image_xscale = 0.4
  newblood.image_yscale = 0.4
	  newblood.gravity = 0.2
	  newblood.direction = random(360)
  instance_destroy()
}

// random delete
if (irandom(80) == 1) {
  instance_destroy()
} 