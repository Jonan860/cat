if(room=room_shop){
var buy=instance_find(obj_buy_button,0)
var sell=instance_find(obj_sell_button,0)
var cancel=instance_find(obj_cancel_buy,0)
if(!buy.visible and !cancel.visible and price<=global.amber.money){
buy.visible=1
cancel.visible=1
sell.visible=0
global.phase=PHASES.buy
global.reinard_rav.buy=self
}
if((!buy.visible and !cancel.visible and price>global.amber.money)){global.reinard_rav.cant_buy=name}
}

if(room=room_inventory){
if(global.phase=PHASES.reinardSell){
global.phase=PHASES.sell
global.reinard_rav.sell=self
scr_goto_room(room_shop)
}

if(global.phase=PHASES.inventory){
with(obj_pots){selected=0}
selected=1
}
}