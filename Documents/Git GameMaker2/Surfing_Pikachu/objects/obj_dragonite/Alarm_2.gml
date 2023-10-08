with(obj_hyperball) {
	instance_destroy()
}
instance_create_depth(x - 0.16 * sprite_width, y - 0.47 * sprite_height
, depth, obj_hyperbeam)
alarm[3] = game_get_speed(gamespeed_fps) * 7

