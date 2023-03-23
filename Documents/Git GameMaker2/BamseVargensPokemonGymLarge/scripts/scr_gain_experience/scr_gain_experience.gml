function scr_gain_experience() {
	var n=0
	with(obj_pokemon){if(owner.name="Amber"){n+=level}}
	
	experience+=power((global.enemy.active_pokemon.level),4)*n/30
	if(experience>=exp_needed){scr_level_up()}
}
