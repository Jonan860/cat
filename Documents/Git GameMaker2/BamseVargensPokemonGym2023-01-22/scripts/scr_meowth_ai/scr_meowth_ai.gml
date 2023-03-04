function scr_meowth_ai() {
	var target=getOpponent()
	if(target.attack_bonus>-5){var move=choose(growl,scratch,scratch)}
	else{var move=scratch}
	move.scrStart()	
	}
