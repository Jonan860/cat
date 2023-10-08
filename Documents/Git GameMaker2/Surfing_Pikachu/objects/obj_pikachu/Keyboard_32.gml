if(room != room_bamse) {
	if(ammo > 0 and loaded) {
		lightning = instance_create_depth(x + sprite_width/2, y, depth, obj_lightning)
		with(lightning) {
			owner = global.pikachu
			image_angle = -225
			speed = 15
			direction = 0
		}
		loaded = 0
		ammo -= 1
		alarm[0] = game_get_speed(gamespeed_fps) * 2
	}
}

