
event_inherited()
if(alive and active){	
	if(global.move=MOVES.thundershock){
if((global.phase==PHASES.attackHit or global.phase==PHASES.attackMiss) and !audio_is_playing(sound_thundershock)){
depth=0
scr_turn_decision()
}
	}
	
	if(global.move=MOVES.thunder){
if((global.phase==PHASES.attackHit or global.phase==PHASES.attackMiss) and !audio_is_playing(sound_thunder)){
	thunder.scr_end()
	
}
	}
}