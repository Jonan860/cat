if(alive and other.owner = global.pikachu) {
	HP -= 1
	with(other) {
		owner = 0
	}
	if(HP <= 0) {
		alive = 0
		rotatingDirectionSign = choose(1, -1)
		sprite_index = dead_sprite
	}
}