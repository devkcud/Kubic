/// @desc Adding score

if (global.scoreList[0] == val) {
	audio_play_sound(sndPickup, 1, false);
	gamePoints += val;
	
	array_delete(global.scoreList, 0, 1);

	instance_destroy();
}
