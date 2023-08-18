// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AdvanceTurn(){
	global.turn++;
	if(global.turn > global.players) global.turn = 0;

	while(!global.playersAlive[global.turn])
	{
		global.turn++;
		if(global.turn > global.players) global.turn = 0;
	}
}