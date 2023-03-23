
if(global.phase=PHASES.choosing and global.turn=TURNS.Amber){
if(global.amber.active_pokemon.leer.pp>0 and global.enemy.active_pokemon.defence_bonus>-5){
	global.amber.active_pokemon.leer.pp-=1	
	event_inherited()
}
else audio_play_sound(sound_error_button,0,0)
}