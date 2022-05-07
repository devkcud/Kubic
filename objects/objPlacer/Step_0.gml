/// @desc Make the placement possible

blockPlacing = blocks[# placingIndex, 0];
blockQuant = blocks[# placingIndex, 1];
blockImg = blocks[# placingIndex, 2];
blockImgName = blocks[# placingIndex, 3];

var awaitIndex = placingIndex;
var height = ds_grid_width(blocks) - 1;

if (keyboard_check_pressed(ord("W")) || mouse_wheel_up()) {
	imgAngle = 0;
	
	awaitIndex++;
} else if (keyboard_check_pressed(ord("S")) || mouse_wheel_down()) {
	imgAngle = 0;

	awaitIndex--;
}

awaitIndex = clamp(awaitIndex, 0, height);

if (blocks[# awaitIndex, 1] == 0)
	for (var i = 0; i < height; i++)
		if (blocks[# i, 1] != 0) {
			awaitIndex = i;
			break;
		}

placingIndex = awaitIndex;

if (runMode == true || gamePoints == gamePointsTotal) exit;

xx = clamp(round(mouse_x / GRID_WxH) * GRID_WxH, (GRID_BUFFER + GRID_WxH), room_width - (GRID_BUFFER + GRID_WxH));
yy = clamp(round(mouse_y / GRID_WxH) * GRID_WxH, (GRID_BUFFER + GRID_WxH), room_height - (GRID_BUFFER + GRID_WxH));

if (keyboard_check_pressed(ord("D"))) imgAngle -= 90;
if (keyboard_check_pressed(ord("A"))) imgAngle += 90;

with (objCursor) {
	if (
		!place_free(x, y)
		|| !place_empty(x, y, objPush, objScore, objSpike)
		|| distance_to_object(objScore) < other.minDist
	) {
		exit;
	}
}

if (mouse_check_button_pressed(mb_left) && blocks[# placingIndex, 1] > 0) {
	blocks[# placingIndex, 1] -= 1;
	var obj = instance_create_layer(xx, yy, "Placed", blockPlacing);
	with (obj) image_angle = other.imgAngle;
	if (!audio_is_playing(sndPlace)) audio_play_sound(sndPlace, 0, false);
}

