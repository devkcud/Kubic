/// @desc Make possible changing room

if (!room == rmMenu) exit;

if (keyboard_check_pressed(vk_enter)) {
	room_goto_next();
	audio_play_sound(sndSuccess, 1, false);
}