
draw_set_font(font_poke_wars)
draw_set_halign(fa_center);
draw_set_color(c_yellow);

for (var i = 0; i < array_length(text); i++) {
	var t_star = timer - i * spacing
	var yy = start_text[1] + t_star * direction_text[1]
	var zz = start_text[2] + t_star * direction_text[2]
	var yyy = z_star / zz * yy
	far_spacing = spacing / (power(abs(yy),2) + power(zz,2)) * (power(abs(start_text[1]),2) + power(start_text[2]^2,2))
	var square_distance = scale / (power(abs(yy),2) + power(zz,2)) * (power(abs(start_text[1]),2) + power(start_text[2],2))
	if (yyy > -far_spacing and yyy < display_get_gui_height()) {
		draw_text_transformed(x, yyy, string_hash_to_newline(text[i]), square_distance, square_distance/2, 0);
	}   
}