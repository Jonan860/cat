
with(global.amber.active_pokemon){
if(asleep.count>0){
owner.awakening.applied=0
asleep.applied=0
nightmare.applied=0
action_bar+=max_action_bar
scr_turn_decision()
with(obj_item_buttons){instance_destroy()}
}
}

