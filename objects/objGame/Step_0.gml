/// @desc Make possible changing room

if (!room == rmMenu) exit;

if (keyboard_check_pressed(vk_enter)) {
	TransitionStart(rmFirst, sqSquareOut, sqSquareIn);
	audio_play_sound(sndSuccess, 1, false);
}

if (keyboard_check_pressed(ord("C"))) {
	TransitionStart(rmControls, sqSquareOut, sqSquareIn);
	audio_play_sound(sndSuccess, 1, false);
}
