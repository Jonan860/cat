function scr_jigglypuff_ai() {
	action_bar+=max_action_bar
	var target=global.amber.active_pokemon
	if(sing.pp=ppMax) {
		sing.scrStart()}
	else if(sing.pp=1 and defence_curl.pp>0 and defence_bonus<5){defenceCurl.scrStart()}
	else if(sing.pp=1 and (defence_curl.pp=0 or defence_bonus=5)){sing.scrStart()}
	else if(sing.pp=0 and (defence_curl.pp=0 or defence_bonus=5)){tackle.scrStart()}
}
