#region Movement and collision
var _left = keyboard_check(ord("A"))
var _right = keyboard_check(ord("D"))
var _jump = keyboard_check(ord("W")) 

var move = _right - _left 

// Add lerp to hsp
hsp = lerp(hsp, sp * move ,0.05)

// Make character fall
vsp += grv

// Jump and buffer jump
canJump--
if (_jump) && (canJump>0)
{
	vsp = -jsp	

	//Play sound when jump
	if(audio_is_playing(jump1) == false) && (audio_is_playing(landing11) == false)
	{
	    audio_play_sound(jump1, 10, false);
	}
	
}

//Horizontal collision
if place_meeting(x+hsp,y,oWall)
{
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
		x+=sign(hsp)	
	}
hsp= 0	 
}

//Vertical collision
if place_meeting(x,y+vsp,oWall)
{ 
	while(!place_meeting(x,y+sign(vsp),oWall))
	{
	y+=sign(vsp)	
	}
	vsp= 0	
}


//Update position
x+= hsp
y+=vsp
  
#endregion
  
  
#region Animation and Sound
  
if !place_meeting(x,y+1,oWall) // Check fly in air
{
	sprite_index = sJump
	image_speed = 0
	if (sign(vsp) > 0)  // Im jumping
	{ 
		image_index = 1
	}
	else // Im Falling
	{
		image_index = 0
	}
}
else // Collide with wall
{
	if (sprite_index == sJump)			// Play sound "land"
	 {
		  audio_sound_pitch(landing11,random_range(0.5,1.5))
		  audio_play_sound(landing11 ,10,0)  
	 }
	canJump = 10			// Buffer time
	image_speed = 1
	if (move==0)				// Release keyboard
	{
		sprite_index = sPlayer	
	}
	else
	{
		sprite_index = sRun	
	}
 }
 
  if (move != 0)				// Flip character
  {
  image_xscale = sign(move)	
  }	
  
  #endregion