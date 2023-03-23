if(scr_instance_position_sprite(mouse_x,mouse_y,obj_starters)>0 and selected){
	var pokemon=scr_instance_position_sprite(mouse_x,mouse_y,obj_starters)
	var hasBeenUsed=false
	var statusList=owner.active_pokemon.statusAilmentList
for(i=0;i<ds_list_size(statusList);i++){
var ailment=ds_list_find_value(statusList,i)
with(ailment){
if(applied){
	hasBeenUsed=true
	applied=false
	count=0
	}
}
}

if(hasBeenUsed){global.amber.fullHeal.count-=1
pokemon.action_bar+=pokemon.max_action_bar
if(global.amber.fullHeal.count=0){instance_destroy()}
}
else{audio_play_sound(sound_error_button,0,0)}
}
if(struct.count=0){instance_destroy()}