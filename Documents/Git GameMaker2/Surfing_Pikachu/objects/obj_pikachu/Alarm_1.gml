if(room != room_bamse) {
	lightning = instance_create_depth(x + sprite_width/2, y, 0, obj_lightning)
	with(lightning) {
		audio_stop_sound(sound_lightning)
		owner = other.id
		speed = 15
		direction = -60 + irandom(120)
		image_angle = direction - 180 - 45
	}
	if(audio_is_playing(sound_pikadrop)) {
		alarm[1] = game_get_speed(gamespeed_fps)/10
	}
}

