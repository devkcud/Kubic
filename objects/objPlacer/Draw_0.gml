/// @desc Drawing object at mouse pos

if (runMode == true || gamePoints == gamePointsTotal) exit;

col = c_white;

if (other.errorTextAlpha < 0.1) reason = "";

with (objCursor)
	if (distance_to_object(objScore) < other.minDist) {
		other.reason = "Too close to the score.";
		
		other.col = c_red;
	}

draw_set_font(fntScore);
draw_set_alpha(other.errorTextAlpha);
draw_set_color(c_red);
draw_set_halign(fa_center);
draw_text(objCursor.x, objCursor.y - 48, reason);
draw_set_color(c_white);
draw_set_alpha(1);

if (blockQuant != 0) {
	draw_sprite_ext(blockImg, 0, xx, yy, 1, 1, imgAngle, col, 0.5);
	scribble("[fa_middle][fa_center][scale, 1.3]A    D[/]").draw(xx, yy);
}

if (gamePoints == gamePointsTotal || blockQuant > 0) {
	scribble("[fa_center]Placing:[/]").draw(GRID_BUFFER / 2, GRID_BUFFER);
	draw_sprite_ext(blockImg, 0, GRID_BUFFER / 2, GRID_BUFFER + 64, 2, 2, imgAngle, c_white, 0.5);
}

