event_inherited()
image_xscale *= 1 + 1/3; image_yscale *= 1 + 1/3
projectile = obj_smog
hurtPika = function() {
	with(global.pikachu) {
		HP -= 20 * (1 - damage_reduction)
	}
}
	
benefitPika = function() {
	with(global.pikachu) {
		if(poison_count > 0) {
			poison_count = 0
		} else {
			HP = min(max_HP, HP + 10)
		}
	}
}
	
