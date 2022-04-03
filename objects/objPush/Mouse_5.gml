/// @desc Remove placed block
if (runMode == true || gamePoints == gamePointsTotal) exit;

instance_destroy();
if (!audio_is_playing(sndRemove)) audio_play_sound(sndRemove, 0, false);

objRoomManager.quantityOfPushs += 1;
