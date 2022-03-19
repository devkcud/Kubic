/// @desc ?
if (runMode == true || gamePoints == gamePointsTotal) return;

xx = clamp(round(mouse_x / GRID_WxH) * GRID_WxH, (GRID_BUFFER + GRID_WxH), room_width - (GRID_BUFFER + GRID_WxH));
yy = clamp(round(mouse_y / GRID_WxH) * GRID_WxH, (GRID_BUFFER + GRID_WxH), room_height - (GRID_BUFFER + GRID_WxH));

if (keyboard_check_pressed(vk_add) || keyboard_check_pressed(ord("A"))) imgAngle -= 90;
if (keyboard_check_pressed(vk_subtract) || keyboard_check_pressed(ord("D"))) imgAngle += 90;

with (objCursor) if (!place_free(x, y) || place_meeting(x, y, objScore) || distance_to_object(objScore) < other.minDist) return;

if (mouse_check_button_pressed(mb_left)) {
	var obj = instance_create_layer(xx, yy, layer, objPush);
	with (obj) image_angle = other.imgAngle;
	audio_play_sound(sndPlace, 0, false);
}
