/// @desc Draw rect to show it's aim
draw_self();

if (!debugMode) return;

var x1 = x - sprite_width,
	y1 = y - sprite_height,
	x2 = x + sprite_width,
	y2 = y + sprite_height;

draw_set_alpha(0.5);
draw_rectangle(x1 + xx + (sprite_width / 2), y1 + yy + (sprite_height / 2), x2 + xx - (sprite_width / 2), y2 + yy - (sprite_height / 2), false);
draw_set_alpha(1);