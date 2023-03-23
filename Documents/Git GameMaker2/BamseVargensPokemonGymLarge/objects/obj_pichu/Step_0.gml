
event_inherited()
if(global.move=MOVES.thundershock){
if((global.phase==PHASES.attackHit or global.phase==PHASES.attackMiss) and !audio_is_playing(sound_thundershock)){
depth=0
scr_turn_decision()
}
}


if(global.move==MOVES.charm and !audio_is_playing(sound_charm)){
audio_resume_sound(global.background_music)
depth=0
scr_turn_decision()
}