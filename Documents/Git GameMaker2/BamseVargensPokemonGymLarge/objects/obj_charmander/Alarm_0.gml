alarm_counter=alarm_counter-1
if (alarm_counter>0){
	image_xscale*=-1
alarm[0]=5
}
else{
	image_xscale*=-1
	global.enemy.active_pokemon.defence_bonus=max(global.enemy.active_pokemon.defence_bonus-1,-5)
	alarm_counter=5
	action_bar=max_action_bar
	scr_turn_decision()
}

