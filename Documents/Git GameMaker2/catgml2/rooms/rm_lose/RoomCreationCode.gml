audio_stop_sound(sound_game)
audio_play_sound(sound_scared,2,false);
if !(audio_is_playing(4))
{audio_play_sound(sound_lose,3,false);}