

with(global.amber.active_pokemon){
if(poisoned.applied>0){
owner.antidote.count-=1
poisoned.applied=0
action_bar+=max_action_bar
scr_turn_decision()
with(obj_item_buttons){instance_destroy()}
}
}