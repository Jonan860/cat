
with(global.amber.active_pokemon){
if(paralyzed.applied>0){
owner.paralyzeHeal.count-=1
paralyzed.applied=0
action_bar+=max_action_bar
scr_turn_decision()
with(obj_item_buttons){instance_destroy()}
}}

