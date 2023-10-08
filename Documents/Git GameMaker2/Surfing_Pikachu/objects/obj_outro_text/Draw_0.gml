draw_set_halign(fa_center);
draw_set_font(font_poke_wars)
draw_set_color(c_aqua);
for(var i = 0; i < row; i += 1) {
	draw_text_transformed(x, i * spacing, string_hash_to_newline(text[i]), scale, scale, 0);
}