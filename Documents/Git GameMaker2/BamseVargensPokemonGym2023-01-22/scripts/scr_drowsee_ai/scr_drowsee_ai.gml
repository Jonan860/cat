function scr_drowsee_ai() {
	var target = global.amber.active_pokemon
var sleepcount=target.asleep.turnsLeft
	if(HP<max_HP/2 and sleepcount==0 and !target.awakening.applied) {
		if(hypnosis.pp>0){global.move = hypnosis}
		else{global.move = confusion}
	}
	else if(HP>=max_HP/2 and sleepcount==0){global.move = confusion}
	else if(sleepcount>0 and HP=max_HP){global.move = confusion}
	else if(target.asleep.count>0 and HP<max_HP){
	global.move = dreamEater
	}



}
