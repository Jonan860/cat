
if(visible){
	with(global.amber){
	for(var i=0; i<ds_list_size(potionBag); i++){
	var item=ds_list_find_value(potionBag,i)
	if(item.object=global.reinard_rav.buy.object_index){
	if(item.price<=global.amber.money){item.count+=1; global.amber.money-=item.price}
	}
	}
	
	}
	
}

visible=0
with(obj_sell_button){visible=1}
with(obj_reinard_rav){
sell=noone
buy=noone
cant_buy=noone
}
cancel=instance_find(obj_cancel_buy,0)
cancel.visible=0
global.phase=PHASES.reinardShop//room_restart()
