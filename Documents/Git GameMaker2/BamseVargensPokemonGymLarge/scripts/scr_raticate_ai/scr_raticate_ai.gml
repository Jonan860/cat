function scr_raticate_ai() {
	var target=getTarget()
	if(superfang.pp>0){superFang.scr_perform()}
	else{ 
		var opponentDefenceBonus=target.defence_bonus
		if(opponentDefenceBonus>-5){move=choose(tailWhip,quickAttack,quickAttack,quickAttack,quickAttack)}
		else{move=quickAttack}
	move.scrStart()
	
}
}