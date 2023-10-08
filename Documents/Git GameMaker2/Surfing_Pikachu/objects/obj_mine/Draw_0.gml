image_index = spr_ind
draw_self()
draw_sprite(bubble, 0, x + sprite_width/2, y - sprite_height/2)

draw_set_valign(fa_bottom)
draw_set_halign(fa_center)
draw_text_ext_transformed_colour(x + sprite_width/2, y - sprite_height/2 - 12
, string_hash_to_newline(answerOptionString), 3 , 500, 2, 2, 0, c_red, c_red, c_red, c_red, 1)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
	

