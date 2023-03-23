var selfPoke=global.amber.active_pokemon
if(global.phase=PHASES.choosing and global.turn=TURNS.Amber){
if(selfPoke.defence_curl.pp>0 and selfPoke.defence_bonus<5 ){
	selfPoke.defence_curl.pp-=1
	event_inherited()
}
else{audio_play_sound(sound_error_button,0,0)}
}

