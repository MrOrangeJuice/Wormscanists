/// @description Check inputs

if(room == rIce) global.players = 3;
if(room == rLava) global.players = 2;
if(room == rChristmasCactus) global.players = 1;

key_endTurn = keyboard_check_pressed(vk_enter);

if(key_endTurn)
{
	global.controller = 0;	
}
	
if(gamepad_button_check_pressed(0,gp_face3))
{
	key_endTurn = 1;
	global.controller = 1;
}

if(key_endTurn)
{
	global.turn++;
	if(global.turn > global.players) global.turn = 0;
}
