/// @desc Drawing object at mouse pos

if (runMode == true || gamePoints == gamePointsTotal) exit;

color = c_white;

with (objCursor) { if (distance_to_object(objScore) < other.minDist || other.blockQuant == 0) other.color = c_red; }

draw_sprite_ext(blockImg, 0, xx, yy, 1, 1, imgAngle, color, 0.5);
scribble("[fa_middle][fa_center][scale, 1.3]< A    D >[/]").draw(xx, yy);
