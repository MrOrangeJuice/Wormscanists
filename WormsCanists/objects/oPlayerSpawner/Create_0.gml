/// @description Spawn player

if(spawnNum <= global.players)
{
	newPlayer = instance_create_layer(x,y,"Instances",oPlayer);

	newPlayer.playerNum = spawnNum;
	newPlayer.palette = spawnNum;
	
	switch(spawnNum)
	{
		case 0:
			newPlayer.idle = sWizard;
			newPlayer.run = sWizardRun;
			newPlayer.jump = sWizardJump;
			newPlayer.fall = sWizardFall;
			break;
		case 1:
			newPlayer.idle = sWizardGreen;
			newPlayer.run = sWizardRunGreen;
			newPlayer.jump = sWizardJumpGreen;
			newPlayer.fall = sWizardFallGreen;
			break;
		case 2:
			newPlayer.idle = sWizardBlue;
			newPlayer.run = sWizardRunBlue;
			newPlayer.jump = sWizardJumpBlue;
			newPlayer.fall = sWizardFallBlue;
			break;
		case 3:
			newPlayer.idle = sWizardOrange;
			newPlayer.run = sWizardRunOrange;
			newPlayer.jump = sWizardJumpOrange;
			newPlayer.fall = sWizardFallOrange;
			break;
	}
}