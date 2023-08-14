/// @description Init

hp = 100;
hsp = 0;
vsp = 0;
grv = 0.2;
move = 0;
walksp = 1;
jumpStrength = 5;
airborne = false;
canJump = true;

// Define inputs
key_left = 0;
key_right = 0;
key_jump = 0;
key_jump_released = 0;

aiming = false;
aimPosX = 0;
aimPosY = 0;
aimHighlight = false;
aimFrame = 0;

// Sprites
idle = sWizard;
run = sWizardRun;
jump = sWizardJump;
fall = sWizardFall;