/// @desc ?
if (!room == rmMenu) return;

if (keyboard_check_pressed(vk_anykey)) {
	room_goto(rmDemo);
	audio_play_sound(sndSuccess, 1, false);
}