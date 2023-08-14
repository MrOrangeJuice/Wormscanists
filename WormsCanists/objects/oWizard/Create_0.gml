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
	case 2:
		idle = sWizardBlue;
		run = sWizardRunBlue;
		jump = sWizardJumpBlue;
		fall = sWizardFallBlue;
		break;
	case 3:
		idle = sWizardOrange;
		run = sWizardRunOrange;
		jump = sWizardJumpOrange;
		fall = sWizardFallOrange;
		break;
}