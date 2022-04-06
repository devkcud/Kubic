/// @desc Make sound

if (room == rmMenu) {
	global.fakeGameAudio = audio_play_sound(sndWalk, 0, false);
	
	alarm[0] = 0.45 * room_speed;
}
