/// @desc ?
if (runMode == true || gamePoints == gamePointsTotal) return;

objRoomManager.quantityOfPushs += 1;

instance_destroy();
if (!audio_is_playing(sndRemove)) audio_play_sound(sndRemove, 0, false);
