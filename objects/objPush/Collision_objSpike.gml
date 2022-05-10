/// @desc Destroy both in collision

if (!audio_is_playing(sndRemove)) audio_play_sound(sndRemove, 0, false);

instance_destroy();
instance_destroy(other);

