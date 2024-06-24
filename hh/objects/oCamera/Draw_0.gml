
if (instance_exists(o_player)) && (toggle ==true)
{ 
draw_set_color(c_white);

// Loop through all instances of obj_enemy
with (o_enemy_gun ) {
    // Calculate the distance between the player and the current enemy instance
    var distance = distance_to_object(o_player)
    
    // Draw a line from the player to the current enemy instance
    draw_line(o_player.x, o_player.y, x, y);
    
    // Calculate the midpoint of the line to display the distance text
    var mid_x = (x + o_player.x) / 2;
    var mid_y = (y + o_player.y) / 2;
    
    // Draw the distance as text at the midpoint of the line
    draw_text(mid_x, mid_y, string(distance));
	

	
	

  	draw_set_alpha(1);
	draw_set_color(c_yellow);
	  draw_text(x+50, y-10,max_distance);
	  	col = collision_line(x, y, o_player.x, o_player.y, oWall, false, false) 
		
		if (col != noone) draw_text(x-300, y-10,col);
		 
		 
	  	draw_set_alpha(0.1 );
	  draw_set_color(c_red);
	draw_circle(x, y, max_distance+30, false);
	
	  
	  
	  
		draw_set_alpha(1);
		draw_set_color(c_white);
	
}
		
}