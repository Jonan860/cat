if(scr_instance_position_sprite(mouse_x,mouse_y,obj_starters)>0 and selected){
	var pokemon=scr_instance_position_sprite(mouse_x,mouse_y,obj_starters)

   global.amber.active_pokemon=pokemon
	if(struct.appliable()){
		struct.effect()
pokemon.action_bar=pokemon.max_action_bar
struct.count-=1
if(struct.count=0){instance_destroy()}
		}
		else{audio_play_sound(sound_error_button,0,0)}
}
else{selected=position_meeting(mouse_x,mouse_y,self)}
