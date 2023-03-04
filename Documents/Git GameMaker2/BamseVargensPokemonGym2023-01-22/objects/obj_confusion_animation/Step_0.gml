image_angle+=5
if (!audio_is_playing(sound_growl) and !audio_is_playing(sound_cow)){
scr_turn_decision()
__background_set( e__BG.Index, 0, background3 )
instance_destroy()
}


