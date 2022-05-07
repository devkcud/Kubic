/// @desc Drawing grid

draw_set_alpha(0.3);

var buffer = GRID_BUFFER,
	grid = GRID_WxH;

// Horizontal
for (var i = 0; i < room_height - buffer * 2; i += grid) {
	draw_line_width(buffer, i + buffer, room_width - buffer, i + buffer, 2);
}

// Vertical
for (var i = 0; i < room_width - buffer * 2; i += grid) {
	draw_line_width(i + buffer, buffer, i + buffer, room_height - buffer, 2);
}

draw_set_alpha(1);

draw_rectangle(buffer, buffer, room_width - buffer, room_height - buffer, true);

/// Drawing guide lines
if (runMode == true || gamePoints == gamePointsTotal) exit;
// horizontal line
var lineWidth = 1;

draw_set_alpha(0.5);

draw_set_color(c_lime);
draw_line_width(buffer, objCursor.y, room_width - buffer, objCursor.y, lineWidth);
draw_line_width(objCursor.x, buffer, objCursor.x, room_height - buffer, lineWidth);

draw_set_alpha(1);
draw_set_color(c_white);

