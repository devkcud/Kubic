/// @desc Drawing guide lines
if (room = rmMenu) exit;

// horizontal line
var buffer = GRID_BUFFER,
	lineWidth = 1;

draw_set_alpha(0.5);

draw_set_color(c_lime);
draw_line_width(buffer, y, room_width - buffer, y, lineWidth);
draw_line_width(x, buffer, x, room_height - buffer, lineWidth);

draw_set_alpha(1);
draw_set_color(c_white);

