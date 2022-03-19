/// @desc ?
if (runMode == true || gamePoints == gamePointsTotal) return;

instance_destroy();
audio_play_sound(sndRemove, 0, false);
