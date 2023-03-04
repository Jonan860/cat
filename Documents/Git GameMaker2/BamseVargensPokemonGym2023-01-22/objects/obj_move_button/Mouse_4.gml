global.last_pressed_move_button=id
var selfPoke=global.amber.active_pokemon
if(global.turn==TURNS.Amber and global.phase==PHASES.choosing){
	if((owner.pp>0 or owner.ppMax=0) and owner.willHaveAnEffect()){
with(selfPoke) scr_perform_status_ailment()


if (instance_exists(selfPoke)){
if(selfPoke.active){
if(isUltimate) {
global.phases=PHASES.riddle
var riddle=instance_create_depth(room_width/2,room_height/2,0,obj_riddle_bar)
with(riddle){owner=other.owner}

if(object_index==obj_thunder_button){
audio_pause_sound(global.background_music)
audio_play_sound(sound_na_na_na_thunder,0,0)
}

}
else {
global.move=owner
owner.scrStart()
}
}
}
}
else{audio_play_sound(sound_error_button,0,0)}
}