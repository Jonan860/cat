function scr_put_to_sleep(target) {
	target.asleep.applied = 1
	target.asleep.turnsLeft=choose(2,3,4) +1 
	scr_turn_decision()
}
