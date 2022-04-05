/// @desc Make the placement possible

if (keyboard_check_pressed(ord("W")) && placingIndex < 4) { placingIndex++; imgAngle = 0; }
if (keyboard_check_pressed(ord("S")) && placingIndex > 0) { placingIndex--; imgAngle = 0; }

blockPlacing = blocks[# placingIndex, 0];
blockImg     = blocks[# placingIndex, 2];
blockImgName = blocks[# placingIndex, 3];

if (runMode == true || gamePoints == gamePointsTotal) exit;

xx = clamp(round(mouse_x / GRID_WxH) * GRID_WxH, (GRID_BUFFER + GRID_WxH), room_width - (GRID_BUFFER + GRID_WxH));
yy = clamp(round(mouse_y / GRID_WxH) * GRID_WxH, (GRID_BUFFER + GRID_WxH), room_height - (GRID_BUFFER + GRID_WxH));

if (keyboard_check_pressed(ord("D"))) imgAngle -= 90;
if (keyboard_check_pressed(ord("A"))) imgAngle += 90;

with (objCursor) { if (!place_free(x, y) || place_meeting(x, y, objPush) || place_meeting(x, y, objScore) || distance_to_object(objScore) < other.minDist) exit; }

if (mouse_check_button_pressed(mb_left) && blocks[# placingIndex, 1] > 0) {
	blocks[# placingIndex, 1] -= 1;
	var obj = instance_create_layer(xx, yy, layer, blockPlacing);
	with (obj) image_angle = other.imgAngle;
	if (!audio_is_playing(sndPlace)) audio_play_sound(sndPlace, 0, false);
}

