/// @desc ?
draw_set_alpha(0.3);

for (var i = 0; i < room_height - buffer * 2; i += grid) {
	draw_line_width(buffer, i + buffer, room_width - buffer, i + buffer, 2);
}

for (var i = 0; i < room_width - buffer * 2; i += grid) {
	draw_line_width(i + buffer, buffer, i + buffer, room_height - buffer, 2);
}

draw_set_alpha(1);

draw_rectangle(buffer, buffer, room_width - buffer, room_height - buffer, true);
