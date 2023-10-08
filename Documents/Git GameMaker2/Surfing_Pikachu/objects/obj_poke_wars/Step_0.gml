event_inherited()
text_speed += 2/game_get_speed(gamespeed_fps)
timer += text_speed
if(timer > game_get_speed(gamespeed_fps) * 3 * text_speed and !instance_exists(obj_star_wars_text)) {
	instance_create_depth(x, y, depth, obj_star_wars_text)
}

var zz = start_text[2] + timer * direction_text[2]
if(zz > room_height * 30) {//10
	instance_destroy()
}



