// Checks for hovering before executing code

if(hovering) 
{
	global.players++;
	if(global.players > 3)
	{
		global.players = 1;	
	}
}
