function scr_amber_save_before_match() {
	if((room==room_jansson and global.Husmusen.defeated=0 or room==room_husmusen and global.Jansson.defeated==0 or room=room_teddy_match)){
		///spara
		var i=0
		with(obj_starters){
		if(owner.name="Amber"){
		global.saved_HP[i]=HP ///
		i+=1
		}
		}
		
		for(i=0;i<ds_list_size(potionBag);i++){
		var item=ds_list_find_value(potionBag,i)
		item.countSaved=item.count
		}

	world_x=x ;world_y=y
	x=match_x; y=match_y
	}

}
