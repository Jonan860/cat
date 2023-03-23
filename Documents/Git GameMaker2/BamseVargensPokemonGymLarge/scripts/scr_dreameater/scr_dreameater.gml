function scr_dreameater(sjalv, enemy) {
global.move=MOVES.dreamEater
	if(check_for_hit(MOVES.dreamEater,sjalv,enemy)){global.phase=PHASES.attackHit}
	else {global.phase=PHASES.attackMiss}
}
