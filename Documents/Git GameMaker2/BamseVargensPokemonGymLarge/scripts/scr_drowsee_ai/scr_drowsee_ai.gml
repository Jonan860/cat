function scr_drowsee_ai() {
	action_bar+=max_action_bar
	var target = global.amber.active_pokemon
var sleepcount=target.asleep.count
	if(HP<max_HP/2 and sleepcount==0 and !target.awakening.applied) {
		if(hypnosis.pp>0){scr_hypnosis(self,target)}
		else{confusion.scrStart()}
	}
	else if(HP>=max_HP/2 and sleepcount==0){confusion.scrStart()}
	else if(sleepcount>0 and HP=max_HP){confusion.scrStart()}
	else if(target.asleep.count>0 and HP<max_HP){
	dreamEater.scrStart()
	}



}
