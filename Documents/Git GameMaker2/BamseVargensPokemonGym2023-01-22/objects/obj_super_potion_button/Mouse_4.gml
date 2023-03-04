
if(global.amber.active_pokemon.HP<global.amber.active_pokemon.max_HP){
global.amber.super_potion_count-=1
global.amber.active_pokemon.HP=min(global.amber.active_pokemon.HP+80,global.amber.active_pokemon.max_HP)
global.amber.active_pokemon.action_bar+=global.amber.active_pokemon.max_action_bar
scr_turn_decision()
with(obj_item_buttons){instance_destroy()}
}