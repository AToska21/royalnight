/// @description alpha stuff
draw_set_font(fnt_main);
if (room == rm_lvl1) {
	draw_text_color(x, y, "RoyalNight Alpha-rn0004 \nchangelog:\n- added day and night platforms \n- added moon level", c_black, c_black, c_black, c_black, 1);
	draw_text(x, y+100, score)
}
if (room == rm_death) {
	draw_text(x, y, "You have sadly died. \nPress TAB to restart.");
}
