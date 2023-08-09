// Fireball atack

//show_debug_message("Leftclick Working");

if (attackPressed) {
	//instance_create(x+5, y, oFireballProjectile);
	//instance_create_depth(x+5, y, 1, oFireballProjectile);
	
	//show_debug_message("Attack Pressed: " + string(attackPressed));
	
	if(sprite_index > 0)
	{
		var fireball = instance_create_depth(x+5, y, 1, oFireballProjectile);
		fireball.direction = point_direction(x, y, mouse_x, mouse_y);
		fireball.speed = 5; // Adjust the speed as needed
	}
	else if(sprite_index < 0)
	{
		var fireball = instance_create_depth(x-5, y, 1, oFireballProjectile);
		fireball.direction = point_direction(x, y, mouse_x, mouse_y);
		fireball.speed = 5; // Adjust the speed as needed
	}
	
}


