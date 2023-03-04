
with(global.amber.active_pokemon){
if(frozen>0){
owner.iceHeal.count-=1
frozen=0
action_bar+=max_action_bar
scr_turn_decision()
with(obj_item_buttons){instance_destroy()}
}
}

