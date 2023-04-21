
global.phase=PHASES.sakuradaycaredropof
with(obj_starters_button){instance_destroy()}

with(global.amber){
for(var i = 0; i < ds_list_size(pokemonCompanionList); i++){
	var pokemon = pokemonCompanionList[|i]
instance_create_depth(400,64*i,0,pokemon.button)
}
}


