/// @desc Logic
alarm[0] = 0.5 * room_speed;

if (!runMode) return;

xx = lengthdir_x(vel, image_angle);
yy = lengthdir_y(vel, image_angle);
	
image_angle = point_direction(0, 0, xx, yy);

x = clamp(x, (objGrid.buffer + 32), room_width - (objGrid.buffer + 32));
y = clamp(y, (objGrid.buffer + 32), room_height - (objGrid.buffer + 32));

if (place_meeting(x + xx, y, objFlipLeft) || place_meeting(x, y + yy, objFlipLeft))
	image_angle += 90;
else if (place_meeting(x + xx, y, objFlipRight) || place_meeting(x, y + yy, objFlipRight))
	image_angle -= 90;
else if (place_meeting(x + xx, y, objRotate) || place_meeting(x, y + yy, objRotate))
	image_angle += 180;
else if (place_meeting(x + xx, y, objMultiply) || place_meeting(x, y + yy, objMultiply)) {
	if (!place_free(x + xx * 2, y) || !place_free(x, y + yy * 2) || !place_free(x + xx * 3, y) || !place_free(x, y + yy * 3)) return;
	
	var obj1 = instance_create_layer(x + xx * 2, y + yy * 2, layer, object_index);
	var obj2 = instance_create_layer(x + xx * 3, y + yy * 3, layer, object_index);
	
	with (obj1) image_angle = other.image_angle;
	with (obj2) image_angle = other.image_angle;
	with (other) instance_destroy();
}

if (place_free(x + xx, y) && place_free(x, y + yy)) {
	x += xx;
	y += yy;
}
