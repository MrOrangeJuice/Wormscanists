// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetupMatch(){
	for(i = 0; i < array_length(global.playersAlive); i++)
	{
		if(i <= global.players)
		{
			global.playersAlive[i] = true;
		}
		else
		{
			global.playersAlive[i] = false;
		}
	}
}