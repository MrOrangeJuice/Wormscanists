// Debugger attack button

//show_debug_message("J Pressed");

attackPressed = !attackPressed;

if(attackPressed)
{
	var aim_indicator = instance_create_layer(x, y, "Instances", oAimIndicator);
		aim_indicator.player = id;
}



