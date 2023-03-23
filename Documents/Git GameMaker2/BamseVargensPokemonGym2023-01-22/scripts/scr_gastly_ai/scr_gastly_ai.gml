function scr_gastly_ai() {
var target=global.amber.active_pokemon
	if(target.asleep.applied and target.awakening.applied and hypnosis.pp>0) {global.move=hypnosis}
	else if(target.asleep.applied>0 and !target.nightmare.applied){global.move = nightmare}
	else {global.move=lick}
scr_perform_status_ailment()
}
