/// @desc Setting image alpha after winning

draw_self();

if (gamePoints == gamePointsTotal) image_alpha = 0.3;

var xx = lengthdir_x(GRID_WxH, image_angle),
	yy = lengthdir_y(GRID_WxH, image_angle);

var placeX = x + xx,
	placeY = y + yy,
	placeX2 = x + xx * 2,
	placeY2 = y + yy * 2;

var buff = GRID_WxH / 2;

draw_set_color(c_red);
draw_set_alpha(0.3);

if (!place_free(placeX, y) || !place_free(placeX2, y)) {
	draw_rectangle(placeX - buff, y - buff, placeX2 + buff, y + buff, false);
	scribble("[fa_center][c_red]Objects too close.").draw(x, y - 48);
}
	
if (!place_free(x, placeY) || !place_free(x, placeY2)) {
	draw_rectangle(x - buff, placeY + buff, x + buff, placeY2 - buff, false);
	scribble("[fa_center][c_red]Objects too close.").draw(x, y - 48);
}

draw_set_alpha(1);
draw_set_color(c_white);

