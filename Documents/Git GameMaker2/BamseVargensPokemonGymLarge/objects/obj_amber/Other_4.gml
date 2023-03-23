scr_amber_save_before_match()

scr_jansson_husmus_gym_defeat_load()

if(room=room_inventory or room=room_shop){visible=0}

if(room=room_jansson or room=room_husmusen or room=room_teddy_match){
x=match_x
y=match_y
}

if(room=jansson_husmus_gym or room=room_skalman or room=room_teddy_gym){
	with(obj_starters){
	image_xscale=1
	image_yscale=1
	x=match_x
	y=match_y
	}
visible=1
}

if((room=jansson_husmus_gym and global.Jansson.defeated=0 and global.Husmusen.defeated==0) or room=room_teddy_gym){game_save("save.sav")}


if(room=room_teddy_match){
var i=0
	with(obj_starters){
	if(owner.name="Amber"){
	global.saved_HP[i]=HP
	i+=1
	for(i=0;i<ds_list_size(movesList);i++){
		var move=ds_list_find_value(moveList,i)
		move.ppSaved=move.pp
}
}
visible=0
}
}


scr_background_music()
