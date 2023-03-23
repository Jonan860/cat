function scr_jigglypuff_ai() {
	var target=global.amber.active_pokemon
	if(sing.pp=ppMax) {
		global.move = sing}
	else if(sing.pp=1 and defence_curl.pp>0 and defence_bonus<5){global.move = defenceCurl}
	else if(sing.pp=1 and (defence_curl.pp=0 or defence_bonus=5)){global.move = sing}
	else if(sing.pp=0 and (defence_curl.pp=0 or defence_bonus=5)){global.move = tackle}
}
