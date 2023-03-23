
function scr_create_move_buttons(){
if(global.amber.active_pokemon=self and global.amber.active_pokemon.alive=1 and !instance_exists(obj_move_button)){
	for(var i=0;i<ds_list_size(movesList);i++){
		var move=ds_list_find_value(movesList,i)
	instance_create(200,500+100*i, move.button)
	}
}
}