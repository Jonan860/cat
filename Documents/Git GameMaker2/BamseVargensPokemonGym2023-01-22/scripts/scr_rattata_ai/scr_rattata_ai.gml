function scr_rattata_ai() {
	var target=getOpponent()
	if(defence_bonus>-5){var move=choose(tailWhip,quickAttack,quickAttack,quickAttack,quickAttack)}
	else{move=quickAttack}
	move.scrStart()
	}