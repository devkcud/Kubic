/// @desc Remove placed block

if (runMode == true || gamePoints == gamePointsTotal) exit;

objPlacer.placingIndex = 4;
objPlacer.blocks[# objPlacer.placingIndex, 1] += 1;

instance_destroy();
if (!audio_is_playing(sndRemove)) audio_play_sound(sndRemove, 0, false);
