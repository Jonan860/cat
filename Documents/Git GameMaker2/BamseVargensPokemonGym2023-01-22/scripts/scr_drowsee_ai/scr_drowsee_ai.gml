function scr_drowsee_ai() {
	var target = global.amber.active_pokemon
var sleepcount=target.asleep.count
	if(HP<max_HP/2 and sleepcount==0 and !target.awakening.applied) {
		if(hypnosis.pp>0){scr_hypnosis(id,target)}
		else{confusion.scrStart()}
	}
	else if(HP>=max_HP/2 and sleepcount==0){confusion.scrStart()}
	else if(sleepcount>0 and HP=max_HP){confusion.scrStart()}
	else if(target.asleep.count>0 and HP<max_HP){
	dreamEater.scrStart()
	}



}
