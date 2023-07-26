/// @description Init

event_inherited();

switch(palette)
{
	case 0:
		idle = sWizard;
		run = sWizardRun;
		jump = sWizardJump;
		fall = sWizardFall;
		break;
	case 1:
		idle = sWizardGreen;
		run = sWizardRunGreen;
		jump = sWizardJumpGreen;
		fall = sWizardFallGreen;
		break;
}