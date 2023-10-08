event_inherited()
hitEffect = function(victim) {
	with(victim) {
		HP = max(0, HP - 20 * (1 - damage_reduction))
	}
}
sound = sound_rock_throw

