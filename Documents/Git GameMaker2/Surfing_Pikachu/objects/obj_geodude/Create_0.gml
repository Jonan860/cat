event_inherited()
image_xscale *= 2
image_yscale *= 2
projectile = obj_rock_throw
hurtPika = function() {
	with(global.pikachu) {
		HP -= 20 * (1 - damage_reduction)
	}
}

benefitPika = function() {
	with(global.pikachu) {
		if(defence_bonus <= 6) {
			defence_bonus += 0.5
			damage_reduction = defence_bonus / (defence_bonus + 1)
		} else {
			HP = min(max_HP, HP + 5)
		}
	}
}

