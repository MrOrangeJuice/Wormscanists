/// @description Advance Turn

global.turn++;
if(global.turn > global.players) global.turn = 0;
aiming = false;
aimHighlight = false;