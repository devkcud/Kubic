/// @desc Destroy both in collision

if (!audio_is_playing(sndRemove)) audio_play_sound(sndRemove, 0, false);

array_push(objControl.spikesDestroyed, [other.x, other.y]);

instance_destroy();
instance_destroy(other);

