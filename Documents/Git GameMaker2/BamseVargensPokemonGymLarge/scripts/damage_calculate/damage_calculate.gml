
function damage_calculate(victim) {
	var attackBonus=owner.attack_bonus
	var typeBonus=get_type_bonus(elementalType,victim)
	var defenceWithBonus=get_defence_bonus(victim.defence,victim.defence_bonus)
	var defenceWithoutBonus=get_defence_bonus(victim.defence,0)
	var damageWithBonus=get_damage(damage,owner.damage,attackBonus)
	var damageWithoutBonus=get_damage(damage,owner.damage,0)
	
	if(damageParadigm==DAMAGEPARADIGMS.normal){
	
	if(crit<=random(100)) return ceil(damageWithBonus*defenceWithBonus*typeBonus)
	else{return ceil(2*max(damageWithBonus*defenceWithBonus*typeBonus,damageWithoutBonus*defenceWithoutBonus*typeBonus))}
	}

	if(move_type==DAMAGEPARADIGMS.percentage){return ceil(victim.max_HP*damage)}

	if(move_type==DAMAGEPARADIGMS.fixed){return ceil(damage)}
}
