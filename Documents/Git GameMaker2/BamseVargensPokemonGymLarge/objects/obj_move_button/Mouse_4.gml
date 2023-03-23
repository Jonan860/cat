global.last_pressed_move_button=self
var selfPoke=global.amber.active_pokemon
if(global.turn==TURNS.Amber){
if(global.phase==PHASES.choosing){
with(global.amber) scr_status_ailment_effect_amber_check()


if (instance_exists(selfPoke)){
if(selfPoke.active){
if(isUltimate) {
global.phases=PHASES.riddle
var riddle=instance_create_depth(room_width/2,room_height/2,0,obj_riddle_bar)
with(riddle){move=other.move}

if(move=MOVES.thunder){
audio_pause_sound(global.background_music)
audio_play_sound(sound_na_na_na_thunder,0,0)
}

}
else {
selfPoke.action_bar=selfPoke.max_action_bar
global.move=move
switch (move.checkForHit(global.enemy.active_pokemon)){
case true : global.phase=PHASES.attackHit break;
case false : global.phase=PHASES.attackMiss  break;}
}
}
}
}
}