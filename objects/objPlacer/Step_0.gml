/// @desc Make the placement possible

blockPlacing = blocks[# placingIndex, 0];
blockQuant = blocks[# placingIndex, 1];
blockImg = blocks[# placingIndex, 2];
blockImgName = blocks[# placingIndex, 3];

var awaitIndex = placingIndex;
var width = ds_grid_width(blocks) - 1;

errorTextAlpha -= 0.05;
errorTextAlpha = clamp(errorTextAlpha, 0, 2);

if (keyboard_check_pressed(ord("W")) || mouse_wheel_up()) {
	imgAngle = 0;

	awaitIndex += (blocks[# awaitIndex + 1, 1] != 0)
		? 1
		: ((blocks[# awaitIndex + 2, 1] != 0)
			? 2
			: 0);
} else if (keyboard_check_pressed(ord("S")) || mouse_wheel_down()) {
	imgAngle = 0;

	awaitIndex -= (blocks[# awaitIndex - 1, 1] != 0)
		? 1
		: ((blocks[# awaitIndex - 2, 1] != 0)
			? 2
			: 0);
}

if (blocks[# awaitIndex, 1] == 0)
	for (var i = 0; i <= width; i++)
		if (blocks[# i, 1] != 0) {
			imgAngle = 0;
			awaitIndex = i;
			break;
		}

awaitIndex = clamp(awaitIndex, 0, width);

placingIndex = awaitIndex;

if (runMode == true || gamePoints == gamePointsTotal) exit;

xx = clamp(round(mouse_x / GRID_WxH) * GRID_WxH, (GRID_BUFFER + GRID_WxH), room_width - (GRID_BUFFER + GRID_WxH));
yy = clamp(round(mouse_y / GRID_WxH) * GRID_WxH, (GRID_BUFFER + GRID_WxH), room_height - (GRID_BUFFER + GRID_WxH));

if (keyboard_check_pressed(ord("D"))) imgAngle -= 90;
if (keyboard_check_pressed(ord("A"))) imgAngle += 90;

if (blocks[# placingIndex, 1] > 0)
	with (objCursor) {
		if (
			!place_free(x, y)
			|| !place_empty(x, y, objPush, objScore, objSpike)
			|| distance_to_object(objScore) < other.minDist
		) {
			if (mouse_check_button_pressed(mb_left)) {
				other.errorTextAlpha = 2.5;
				audio_play_sound(sndStop, 0, false);
			}
			exit;
		}
	}

if (mouse_check_button_pressed(mb_left) && blocks[# placingIndex, 1] > 0) {
	if (countTimer == false) countTimer = true;
	
	blocks[# placingIndex, 1] -= 1;
	var obj = instance_create_layer(xx, yy, "Placed", blockPlacing);
	with (obj) image_angle = other.imgAngle;
	if (!audio_is_playing(sndPlace)) audio_play_sound(sndPlace, 0, false);
}

