function scr_marill_ai() {
	active_pokemon.action_bar+=active_pokemon.max_action_bar
	if(marill.defence_curl.pp>0 and marill.defence_bonus<2){defenceCurl.scrStart()}
	else{rollout.scrStart()}
}