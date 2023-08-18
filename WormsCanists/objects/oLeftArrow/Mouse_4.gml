// Checks for hovering before executing code

if(hovering) 
{
	global.players--;
	if(global.players < 1)
	{
		global.players = 3;	
	}
}
