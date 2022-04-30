/// @desc Drawing the pause menu

if (global.isPaused) {
	draw_surface(screenshot, 0, 0);
	
	draw_set_alpha(0.7);
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_alpha(1);

	scribble("[fa_center][fa_middle][fntHeader][rainbow]Game Paused[/]\n[fa_center][fa_middle][fntScore]Press [rainbow]\"Esc\"[/rainbow] to return.").draw(room_width / 2, room_height / 2);
}
