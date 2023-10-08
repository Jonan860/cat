draw_set_halign(fa_center);
draw_set_valign(fa_bottom)
draw_set_font(font_poke_wars)
draw_set_color(c_aqua);
if(timer > game_get_speed(gamespeed_fps) * 10) {
	row += 1
	timer = 0
}
   
if (row < 4) {
	draw_text_transformed(0.5 * gui_w, 0.5 * gui_h - spacing, string_hash_to_newline(text[row]), scale, scale, 0);
}
if(row = rows - 1 or row == rows) {
	draw_text_transformed(0.5 * gui_w, 0.5 * gui_h - spacing, string_hash_to_newline(text[4]), scale, scale, 0)
	draw_text_transformed(0.5 * gui_w, 0.5 * gui_h, string_hash_to_newline(text[5]), scale, scale, 0);
}
if(row = rows + 1) {
	instance_create_depth(x, y, depth, obj_poke_wars)
	instance_destroy()
}