function scr_meowth_ai() {
	var target=getTarget()
	if(target.attack_bonus>-5){var move=choose(growl,scratch,scratch)}
	else{var move=scratch}
	move.scr_perform()	
	}
