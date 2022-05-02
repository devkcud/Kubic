/// @desc Logic

alarm[0] = timerCooldown * room_speed;

if (!runMode) exit;

var xst = x,
	yst = y;

xx = lengthdir_x(vel, image_angle);
yy = lengthdir_y(vel, image_angle);
	
image_angle = point_direction(0, 0, xx, yy);

if (place_meeting(x + xx, y, objDirectional) || place_meeting(x, y + yy, objDirectional)) {
	with (instance_nearest(x, y, objDirectional)) {
		if (image_angle == other.image_angle) {
			instance_create_layer(x + other.xx, y + other.yy, layer, other.object_index);
			instance_destroy(other);
		}
		
		other.image_angle = image_angle;
	}
	
	if (!audio_is_playing(sndChange)) audio_play_sound(sndChange, 1, false);
}
else if (place_meeting(x + xx, y, objMultiply) || place_meeting(x, y + yy, objMultiply)) {
	if (!place_free(x + xx * 2, y) || !place_free(x, y + yy * 2) || !place_free(x + xx * 3, y) || !place_free(x, y + yy * 3)) exit;
	
	with (instance_nearest(x, y, objMultiply)) {
		var multxx = lengthdir_x(other.vel, image_angle),
			multyy = lengthdir_y(other.vel, image_angle);
		
		show_debug_message("XX: " + string(other.xx) + "| MXX: " + string(multxx));
		show_debug_message("YY: " + string(other.yy) + "| MXX: " + string(multyy));
		
		if ((multxx == other.xx && multyy != other.yy) || (multyy == other.yy && multxx != other.xx)) exit;
		
		var obj1 = instance_create_layer(x + multxx, y + multyy, layer, objPush),
			obj2 = instance_create_layer(x + multxx * 2, y + multyy * 2, layer, objPush);

		with (obj1) image_angle = other.image_angle;
		with (obj2) image_angle = other.image_angle;

		instance_destroy(other);
	}
	
	if (!audio_is_playing(sndChange)) audio_play_sound(sndChange, 1, false);
}

if (place_free(x + xx, y) && place_free(x, y + yy)) {
	x += xx;
	y += yy;
	
	x = clamp(x, (GRID_BUFFER + GRID_WxH), room_width - (GRID_BUFFER + GRID_WxH));
	y = clamp(y, (GRID_BUFFER + GRID_WxH), room_height - (GRID_BUFFER + GRID_WxH));
	
	if ((x != xst || y != yst) && !audio_is_playing(sndWalk))
		audio_play_sound(sndWalk, 0, false);
}
