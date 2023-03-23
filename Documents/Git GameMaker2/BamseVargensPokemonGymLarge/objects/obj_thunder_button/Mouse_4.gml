
if(global.phase=PHASES.choosing and global.turn=TURNS.Amber){
if(global.amber.active_pokemon.thunder.pp>0){
global.amber.active_pokemon.thunder.pp-=1
event_inherited()
}
else{audio_play_sound(sound_error_button,0,0)}
}