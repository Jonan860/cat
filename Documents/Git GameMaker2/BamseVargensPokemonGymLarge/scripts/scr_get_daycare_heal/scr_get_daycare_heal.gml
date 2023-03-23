function scr_get_daycare_heal() {
	// returns the hp that should be healed in daycare. "proportianal to average level"

	var sum_level=0
	var number=0
	with(obj_starters){
		number+=1
	sum_level+=level
	}
	return 10*sum_level/number


}
