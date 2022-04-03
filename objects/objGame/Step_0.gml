/// @desc ?
if (!room == rmMenu) exit;

if (keyboard_check_pressed(vk_anykey)) {
	room_goto_next();
	audio_play_sound(sndSuccess, 1, false);
}