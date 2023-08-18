/// @description Check inputs

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
	AdvanceTurn();
}
