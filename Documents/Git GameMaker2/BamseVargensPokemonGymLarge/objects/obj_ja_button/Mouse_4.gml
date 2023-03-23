
if(visible and string_pos("sell",global.phase)>0){
switch((instance_find(obj_reinard_rav,0)).sell.name){
case "Full heal": global.amber.full_heal_count-=1; global.amber.money+=floor((instance_find(obj_full_heal,0)).price/2);break;
case "Burn heal": global.amber.burn_heal_count-=1; global.amber.money+=floor((instance_find(obj_burn_heal,0)).price/2);break;
case "Potion": global.amber.potion_count-=1;global.amber.money+=floor((instance_find(obj_potion,0)).price/2); break;
case "Ice heal": global.amber.ice_heal_count-=1;global.amber.money+=floor((instance_find(obj_ice_heal,0)).price/2); break;
case "Awakening": global.amber.awakening_count-=1; global.amber.money+=floor((instance_find(obj_awakening,0)).price/2);break;
case "Super potion": global.amber.super_potion_count-=1; global.amber.money+=floor((instance_find(obj_super_potion,0)).price/2);break;
case "Paralyze heal": global.amber.paralyze_heal_count-=1;global.amber.money+=floor((instance_find(obj_paralyze_heal,0)).price/2); break;
case "Antidote": global.amber.antidote_count-=1; global.amber.money+=floor((instance_find(obj_antidote,0)).price/2); break;
}
with(obj_pots)
{

}
visible=0
with(obj_nej_button){visible=0}

with(obj_pots){visible=1}

with(obj_reinard_rav){
sell=noone
buy=noone
cant_buy=noone
}

global.phase=PHASES.reinardShop
}

if(visible and string_pos("buy",global.phase)>0){
switch((instance_find(obj_reinard_rav,0)).sell.name){
case "Full heal": global.amber.full_heal_count-=1; global.amber.money+=floor((instance_find(obj_full_heal,0)).price/2);break;
case "Burn heal": global.amber.burn_heal_count-=1; global.amber.money+=floor((instance_find(obj_burn_heal,0)).price/2);break;
case "Potion": global.amber.potion_count-=1;global.amber.money+=floor((instance_find(obj_potion,0)).price/2); break;
case "Ice heal": global.amber.ice_heal_count-=1;global.amber.money+=floor((instance_find(obj_ice_heal,0)).price/2); break;
case "Awakening": global.amber.awakening_count-=1; global.amber.money+=floor((instance_find(obj_awakening,0)).price/2);break;
case "Super potion": global.amber.super_potion_count-=1; global.amber.money+=floor((instance_find(obj_super_potion,0)).price/2);break;
case "Paralyze heal": global.amber.paralyze_heal_count-=1;global.amber.money+=floor((instance_find(obj_paralyze_heal,0)).price/2); break;
case "Antidote": global.amber.antidote_count-=1; global.amber.money+=floor((instance_find(obj_antidote,0)).price/2); break;
}
with(obj_pots)
{

}
visible=0
with(obj_reinard_rav){
sell=noone
buy=noone
cant_buy=noone
}

global.phase=PHASES.reinardShop
with(obj_nej_button){visible=0}

with(obj_pots){visible=1}
}