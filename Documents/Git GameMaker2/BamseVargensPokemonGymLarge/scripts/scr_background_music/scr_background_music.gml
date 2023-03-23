function scr_background_music() {
	switch(room){
case room_teddy_match: global.background_music=sound_pokemon_jigglypuff
case jansson_husmus_gym: global.background_music=sound_pokemon_start
case room_jansson: global.background_music=sound_pokemon_who_is_stronger
case room_husmusen: global.background_music=sound_pokemon_burning_battle_field
case room_shop: if(global.last_room==room_skalman) global.background_music=sound_underworld else exit;
default:  exit;
	}
	audio_stop_all()
	audio_play_sound(global.background_music,0,1)
}
