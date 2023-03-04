
if(visible=1){
global.phase=PHASES.reinardShop
with(instance_find(obj_buy_button,0)){visible=0}
with(instance_find(obj_sell_button,0)){visible=1}
with(instance_find(obj_back_button,0)){visible=1}
with(obj_reinard_rav){
sell=noone
buy=noone
cant_buy=noone
}
visible=0
}