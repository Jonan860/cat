event_inherited()
image_xscale *= 1 + 1/3; image_yscale *= 1 + 1/3
projectile = !global.pikachu.damage_reduction ? obj_lightning : obj_screech
benefitPika = function() {
with(global.pikachu) {
			if(ammo <= 6) {
				ammo += 2
			} else {
				HP = min(max_HP, HP + 10)
			}
		}
}

hurtPika = function() {
	with(global.pikachu) {
			HP -= 30 * (1 - damage_reduction)
		}
}