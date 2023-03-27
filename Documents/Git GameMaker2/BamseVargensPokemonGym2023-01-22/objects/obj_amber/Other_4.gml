scr_amber_save_before_match()

scr_jansson_husmus_gym_defeat_load()

if(room=room_inventory or room=room_shop){visible=0}

if(room=room_jansson or room=room_husmusen or room=room_teddy_match){
x=match_x; y=match_y
}

if(room=jansson_husmus_gym or room=room_skalman or room=room_teddy_gym){
	active_pokemon = noone
	for(var i = 0; i < ds_list_size(pokemonList); i++){
	with(pokemonList[|i]){
	image_xscale=1; image_yscale=1
	x=match_x; y=match_y
	visible = 0
	}
	}
//	x=world_x; y = world_y
visible=1
}

/*if((room=jansson_husmus_gym and global.Jansson.defeated==0 and global.Husmusen.defeated==0) or room=room_teddy_gym){
	//game_save("save.sav")
	}*/

/*
if(room=room_teddy_match){
for(var i = 0; i< ds_list_size(pokemonList); i++){
var varpokemon = pokemonList[|i]
with(varpokemon){
global.saved_HP[i] = HP
for(i=0; i < ds_list_size(movesList); i++){
		var move=movesList[|i]
		move.ppSaved=move.pp	
}
visible = 0
}
}
}


scr_background_music()
