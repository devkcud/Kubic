/// @desc Logic
alarm[0] = 0.5 * room_speed;

x = clamp(x, (GRID_BUFFER + GRID_WxH), room_width - (GRID_BUFFER + GRID_WxH));
y = clamp(y, (GRID_BUFFER + GRID_WxH), room_height - (GRID_BUFFER + GRID_WxH));

if (!runMode) return;

xx = lengthdir_x(vel, image_angle);
yy = lengthdir_y(vel, image_angle);
	
image_angle = point_direction(0, 0, xx, yy);

if (place_meeting(x + xx, y, objFlipLeft) || place_meeting(x, y + yy, objFlipLeft)) {
	image_angle += 90;
	audio_play_sound(sndChange, 1, false);
} else if (place_meeting(x + xx, y, objFlipRight) || place_meeting(x, y + yy, objFlipRight)) {
	image_angle -= 90;
	audio_play_sound(sndChange, 1, false);
} else if (place_meeting(x + xx, y, objRotate) || place_meeting(x, y + yy, objRotate)) {
	image_angle += 180;
	audio_play_sound(sndChange, 1, false);
} else if (place_meeting(x + xx, y, objMultiply) || place_meeting(x, y + yy, objMultiply)) {
	if (!place_free(x + xx * 2, y) || !place_free(x, y + yy * 2) || !place_free(x + xx * 3, y) || !place_free(x, y + yy * 3)) return;
	
	var obj1 = instance_create_layer(x + xx * 2, y + yy * 2, layer, object_index);
	var obj2 = instance_create_layer(x + xx * 3, y + yy * 3, layer, object_index);
	
	with (obj1) image_angle = other.image_angle;
	with (obj2) image_angle = other.image_angle;
	with (other) instance_destroy();
	audio_play_sound(sndChange, 1, false);
}

if (place_free(x + xx, y) && place_free(x, y + yy)) {
	x += xx;
	y += yy;
	if (!audio_is_playing(sndWalk)) audio_play_sound(sndWalk, 0, false);
}
