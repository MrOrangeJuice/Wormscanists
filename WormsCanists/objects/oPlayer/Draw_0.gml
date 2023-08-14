/// @description Draw Arrow

draw_self();

if(aiming)
{
	if(global.controller)
	{
		aimPosX = x + gamepad_axis_value(0, gp_axisrh) * 10;
		aimPosY = y + gamepad_axis_value(0, gp_axisrv) * 10;
		draw_sprite(sAimArrow, 0, aimPosX,aimPosY);
	}
	else
	{
		xDisp = ((x - mouse_x) / 10);
		yDisp = ((y - mouse_y) / 10);
		if(xDisp > 10) { xDisp = 10; }
		else if(xDisp < -10) { xDisp = -10; }
		if(yDisp > 10) { yDisp = 10; }
		else if(yDisp < -10) { yDisp = -10; }
		aimPosX = x -xDisp;
		aimPosY = y -yDisp;
		
		draw_sprite(sAimArrow, 0, aimPosX, aimPosY);	
	}
}