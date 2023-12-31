/// @description Draw Arrow

draw_self();

if(aiming)
{
	// Highlight aiming indicator
	if(aimHighlight) aimFrame = 1;
	else aimFrame = 0;
	
	if(global.controller)
	{
		aimPosX = x + gamepad_axis_value(0, gp_axisrh);
		aimPosY = y + gamepad_axis_value(0, gp_axisrv);
		draw_sprite_ext(sAimArrow, aimFrame, aimPosX,aimPosY,1,1,point_direction(0,0,gamepad_axis_value(0, gp_axisrh),gamepad_axis_value(0, gp_axisrv)),c_white,1);
	}
	else
	{
		xDisp = ((x - mouse_x) / 10);
		yDisp = ((y - mouse_y) / 10);
		if(xDisp > 10) { xDisp = 10; }
		else if(xDisp < -10) { xDisp = -10; }
		if(yDisp > 10) { yDisp = 10; }
		else if(yDisp < -10) { yDisp = -10; }
		aimPosX = x;
		aimPosY = y;
		
		draw_sprite_ext(sAimArrow, aimFrame,aimPosX,aimPosY,1,1,point_direction(aimPosX, aimPosY, mouse_x, mouse_y),c_white,1);	
	}
}