draw_self()
if(room != room_bamse) {
	draw_healthbar(50, 25, 250, 50, HP/max_HP * 100, c_black
	, c_red, c_lime, 0, 0, 0)
	draw_text_ext_transformed_colour(500, room_height - 100 ,
	string_hash_to_newline(questionString), 5, 300, 2, 2, 0,
	c_lime, c_lime, c_red, c_red, 1);
	draw_text_ext_transformed_colour(350, 25
	, string_hash_to_newline("lightning : " + string(ammo))
	, 5, 300, 2, 2, 0
	, c_dkgray, c_yellow, c_red, c_yellow, 1);
	draw_text_ext_transformed_colour(350, 75,
	string_hash_to_newline("poison_count : " + string(poison_count))
	, 5, 300, 2, 2, 0
	, c_lime, c_purple, c_fuchsia, c_purple, 1);
	draw_text_ext_transformed_colour(350, 125
	, string_hash_to_newline("damage_reduction : " + string(damage_reduction) + "%")
	,5, 300, 2, 2, 0
	, c_lime, c_gray, c_fuchsia, c_gray, 1);
}

