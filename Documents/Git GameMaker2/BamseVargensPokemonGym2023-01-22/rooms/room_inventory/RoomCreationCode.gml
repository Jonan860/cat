for(var i = 0; i<ds_list_size(global.amber.pokemonCompanionList); i++){
	with(global.amber.pokemonCompanionList[|i]){
		x=200+300*(i>3)
		y=180*i-180*3*(i>3)
		visible=1
		i+=1
}
}



var j=1


//with(global.amber)
//{
//instance_create(200+500,180*j,obj_potion)
//j+=1
//instance_create(200+500,180*j,obj_super_potion)
//j+=1
//instance_create(200+500,180*j,obj_antidote)
//j+=1
//instance_create(200+500,180*j,obj_paralyze_heal)
//j+=1
//instance_create(200+500+100,180*j-180*4,obj_full_heal)
//j+=1
//instance_create(200+500+100,180*j-180*4,obj_awakening)
//j+=1
//instance_create(200+500+100,180*j-180*4,obj_burn_heal)
//j+=1
//instance_create(200+500+100,180*j-180*4,obj_ice_heal)
//}
