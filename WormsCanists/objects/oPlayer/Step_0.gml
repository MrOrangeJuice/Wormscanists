/// @description Move

if(global.turn == playerNum)
{   
	// Get Input
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check(vk_space) || keyboard_check(ord("P")) || keyboard_check(ord("Z"));
	key_jump_released = keyboard_check_released(vk_space) || keyboard_check_released(ord("P")) || keyboard_check_released(ord("Z"));
	
	if(key_left || key_right || key_jump || key_jump_released)
	{
		global.controller = 0;
	}
	
	// Controller Input
	if(gamepad_button_check(0,gp_axislh) < -0.4 || gamepad_button_check(0,gp_padl))
	{
		key_left = 1;
		global.controller = 1;
	}
	
	if(gamepad_button_check(0,gp_axislh) > 0.4 || gamepad_button_check(0,gp_padr))
	{
		key_right = 1;
		global.controller = 1;
	}
	
	if(gamepad_button_check(0,gp_face1))
	{
		key_jump = 1;
		global.controller = 1;
	}
	
	if(gamepad_button_check_released(0,gp_face1))
	{
		key_jump_released = 1;
		global.controller = 1;
	}
}
	
move = key_right-key_left;
	
hsp = move * walksp;
	
vsp += grv;
	
// Check if player is airborne
if(!place_meeting(x,y+1,oWall))
{
	airborne = true;
}
else
{
	airborne = false;	
}
	
// Until player released jump, they can't jump again
if(key_jump_released)
{
	canJump = true;	
}
	
// Jump
if(key_jump && !airborne && canJump)
{
	vsp = -jumpStrength;
	canJump = false;
}
	
// Variable jump height
if vsp < 0 && (!(key_jump)) //if you're moving upwards in the air but not holding down jump
{
	vsp *= 0.85; //essentially, divide your vertical speed
}
	
// Collision
// Horizontal Collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

// Vertical Collision
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;

// Animation

if(abs(hsp) > 0) image_xscale = sign(hsp);

if(airborne)
{
	if(vsp < 0)
	{
		sprite_index = jump;
	}
	else
	{
		sprite_index = fall;	
	}
}
else
{
	if(abs(hsp) > 0)
	{
		sprite_index = run;	
	}
	else
	{
		sprite_index = idle;	
	}
}