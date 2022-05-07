/// @desc Drawing object at mouse pos

if (runMode == true || gamePoints == gamePointsTotal) exit;

col = c_white;

with (objCursor)
	if (other.blocks[# other.placingIndex, 1] == 0) {
		var text = scribble("[fa_center]Out of blocks.");
		text.blend(c_white, other.errorTextAlpha);
		text.draw(x, y - 48);
		
		other.col = c_red;
	} else if (distance_to_object(objScore) < other.minDist) {
		var text = scribble("[fa_center]Too close to the score.");
		text.blend(c_white, other.errorTextAlpha);
		text.draw(x, y - 48);
		
		other.col = c_red;
	}

if (blockQuant != 0) {
	draw_sprite_ext(blockImg, 0, xx, yy, 1, 1, imgAngle, col, 0.5);
	scribble("[fa_middle][fa_center][scale, 1.3]A    D[/]").draw(xx, yy);
}

if (gamePoints == gamePointsTotal || blockQuant > 0) {
	scribble("[fa_center]Placing:[/]").draw(GRID_BUFFER / 2, GRID_BUFFER);
	draw_sprite_ext(blockImg, 0, GRID_BUFFER / 2, GRID_BUFFER + 64, 2, 2, imgAngle, c_white, 0.5);
}

