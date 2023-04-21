function scr_get_daycare_heal() {
	// returns the hp that should be healed in daycare. "proportianal to average level"

	for(var i = 0; i < ds_list_size(pokemonList); i++){
	var pokemon = pokemonList[|i]
	sum_level+=pokemon.level
	}
	return 10*sum_level/ds_list_size(pokemonList)
}
