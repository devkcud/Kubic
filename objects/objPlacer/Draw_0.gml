/// @desc ?
if (runMode == true || gamePoints == gamePointsTotal) return;

color = c_white;

with (objCursor) if (distance_to_object(objScore) < other.minDist || objRoomManager.quantityOfPushs == 0) other.color = c_red;

draw_sprite_ext(sprPush, 0, xx, yy, 1, 1, imgAngle, color, 0.5);