/// @description GUI
draw_set_font(fUI);
if(room != rMainMenu && room != rMapSelect)
{
	draw_text(2,-4,"Turn: " + string(global.turn));
}