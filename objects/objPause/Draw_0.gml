/// @desc ?
if (global.isPaused == false) return;

draw_set_alpha(0.7);
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);

scribble("[fa_center][fa_middle][fntHeader]Game Paused[/]").draw(room_width / 2, room_height / 2);

