/// @desc ?
if (runMode == true || gamePoints == gamePointsTotal) return;

xx = clamp(round(mouse_x / objGrid.grid) * objGrid.grid, (objGrid.buffer + objGrid.grid), room_width - (objGrid.buffer + objGrid.grid));
yy = clamp(round(mouse_y / objGrid.grid) * objGrid.grid, (objGrid.buffer + objGrid.grid), room_height - (objGrid.buffer + objGrid.grid));

if (keyboard_check_pressed(vk_add)) imgAngle -= 90;
if (keyboard_check_pressed(vk_subtract)) imgAngle += 90;

with (objCursor) if (!place_free(x, y)) return;

if (mouse_check_button_pressed(mb_left)) {
	var obj = instance_create_layer(xx, yy, layer, objPush);
	with (obj) image_angle = other.imgAngle;
}
