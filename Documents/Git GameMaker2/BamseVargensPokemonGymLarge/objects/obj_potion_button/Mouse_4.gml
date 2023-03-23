with(global.amber.active_pokemon){
if(HP<max_HP){
owner.potion.count-=1
HP=min(HP+40,max_HP)
action_bar+=max_action_bar
scr_turn_decision()
with(obj_item_buttons){instance_destroy()}
}}
