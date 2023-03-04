if(room=room_shop){
var buybutton=instance_find(obj_buy_button,0)
var sellbutton=instance_find(obj_sell_button,0)
var cancelbutton=instance_find(obj_cancel_buy,0)
if(!buybutton.visible and !cancelbutton.visible){
	if(price<=global.amber.money){
buybutton.visible=1
cancelbutton.visible=1
sellbutton.visible=0
global.phase=PHASES.buy
global.reinard_rav.buy=id
}
else if(price>global.amber.money){global.reinard_rav.cant_buy=name}
}
}

if(room=room_inventory){
if(global.phase=PHASES.reinardSell){
global.phase=PHASES.sell
global.reinard_rav.sell=id
scr_goto_room(room_shop)
}
}

if(global.phase=PHASES.inventory){
with(obj_pots){selected=0}
selected=1
}
