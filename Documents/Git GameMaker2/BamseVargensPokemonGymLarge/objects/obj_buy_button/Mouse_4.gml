
if(visible){
	with(global.amber){
	for(var i=0; i<ds_list_size(potionBag); i++){
	var item=ds_list_find_value(potionBag,i)
	item.enum
	}
	
	}
	switch (global.phase){
case "buy Full heal": with(global.amber){if(instance_find(obj_full_heal,0).price<=global.amber.money){full_heal_count+=1; money-=instance_find(obj_full_heal,0).price}}; break;
case "buy Burn heal": with(global.amber){if(instance_find(obj_burn_heal,0).price<=global.amber.money){burn_heal_count+=1; money-=instance_find(obj_burn_heal,0).price}};break;
case "buy Potion":  with(global.amber){if(instance_find(obj_potion,0).price<=global.amber.money){potion_count+=1; money-=instance_find(obj_potion,0).price}};break;
case "buy Ice heal":  with(global.amber){if(instance_find(obj_ice_heal,0).price<=global.amber.money){ice_heal_count+=1; money-=instance_find(obj_ice_heal,0).price}};break;
case "buy Awakening": with(global.amber){if(instance_find(obj_awakening,0).price<=global.amber.money){awakening_count+=1; money-=instance_find(obj_awakening,0).price}};break;
case "buy Super potion":  with(global.amber){if(instance_find(obj_super_potion,0).price<=global.amber.money){super_potion_count+=1; money-=instance_find(obj_super_potion,0).price}};break;
case "buy Paralyze heal":  with(global.amber){if(instance_find(obj_paralyze_heal,0).price<=global.amber.money){paralyze_heal_count+=1; money-=instance_find(obj_paralyze_heal,0).price}};break;
case "buy Antidote":  with(global.amber){if(instance_find(obj_antidote,0).price<=global.amber.money){antidote_count+=1; money-=instance_find(obj_antidote,0).price}};break;
default: show_debug_message("nothing to buy for buy button");
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
}