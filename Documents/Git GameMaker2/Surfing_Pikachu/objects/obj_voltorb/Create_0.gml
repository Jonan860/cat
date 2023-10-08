event_inherited()
armed = choose(0, 1)
projectile = obj_sonicboom
hurtPika = function() {
	global.pikachu.HP -= 20
} 
	
benefitPika = function() {
	with(global.pikachu) {
		HP = min(max_HP, HP + 20)
	}
}


