event_inherited()
image_angle = point_direction(x, y, global.pikachu.x, global.pikachu.y) - 225
owner = 0
audio_play_sound(sound_lightning, 0, 0)

hitEffect = function(victim) {
	show_debug_message("other for hitEffect is" + string(other.id))
	with(victim) {
		HP -= 20 * (1 - damage_reduction)
	}
}

sound = sound_lightning
