function scr_gastly_ai() {
	action_bar+=max_action_bar
var target=global.amber.active_pokemon
	if(target.asleep.applied and target.awakening.applied and hypnosis.pp>0) {hypnosis.scrStart()}
	else if(target.asleep.applied>0 and !target.nightmare.applied){nightmare.scrStart()}
	else {lick.scrStart()}

}
