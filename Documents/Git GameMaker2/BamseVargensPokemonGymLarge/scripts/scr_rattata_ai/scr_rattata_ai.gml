function scr_rattata_ai() {
	var target=getTarget()
	if(defence_bonus>-5){var move=choose(tailWhip,quickAttack,quickAttack,quickAttack,quickAttack)}
	else{move=quickAttack}
	move.scr_perform()
	}