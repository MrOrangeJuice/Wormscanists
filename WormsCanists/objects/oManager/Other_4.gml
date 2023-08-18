/// @description Spawn players

/*
if(room != rMainMenu && room != rMapSelect)
{
	spawnPosX = random_range(0,room_width);
	spawnPosY = random_range(0,room_height);


	for(i = 0; i < global.players; i++)
	{
		while(place_meeting(spawnPosX,spawnPosY,oWall))
		{
			spawnPosX = random_range(0,room_width);
			spawnPosY = random_range(0,room_height);
		}
		newPlayer = instance_create_layer(spawnPosX,spawnPosY,"Instances",oPlayer);
		newPlayer.playerNum = i;
		newPlayer.palette = i;
		spawnPosX = random_range(0,room_width);
		spawnPosY = random_range(0,room_height);
	}
}
*/