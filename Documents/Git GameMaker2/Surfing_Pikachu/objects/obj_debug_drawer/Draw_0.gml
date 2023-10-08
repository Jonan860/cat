draw_text(500, 500, string_hash_to_newline(global.pikachu.poison_count))
draw_text(500, 525, string_hash_to_newline(string(global.player)))
draw_text(500, 550, string_hash_to_newline(string(global.n)))
draw_text(500, 575, string_hash_to_newline(string(global.m)))
draw_text(500, 600, string_hash_to_newline(string(global.number)))
if(instance_exists(global.pidgeot)) {
	draw_text(500, 625, string_hash_to_newline(global.bossState))
}
if(instance_exists(global.dragonite)) {
draw_text(500, 650, string_hash_to_newline(global.dragonite.alarm[2]))
draw_text_ext_transformed(500, 300, string_hash_to_newline((mouse_x - global.dragonite.x)/global.dragonite.sprite_width)
, 10, 100, 3, 3, 0)
draw_text_ext_transformed(600, 300
, string_hash_to_newline((mouse_y - global.dragonite.y) / global.dragonite.sprite_height), 10, 100, 3, 3, 0)
}

