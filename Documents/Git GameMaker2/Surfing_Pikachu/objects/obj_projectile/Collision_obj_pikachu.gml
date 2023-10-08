if(alive and owner != global.pikachu) {
	hitEffect(other.id)
	alive = 0
	instance_destroy()
}
