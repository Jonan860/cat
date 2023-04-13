if(room=room_shop){
var buybutton=instance_find(obj_buy_button,0)
var sellbutton=instance_find(obj_sell_button,0)
var cancelbutton=instance_find(obj_cancel_buy,0)
if(global.phase == PHASES.buy){
	if(struct.price<=global.amber.money){
global.shopManager.buyStruct=struct
global.phase=PHASES.buy
global.shopManager.updateShopButtons()
}
else if(struct.price>global.amber.money){global.reinard_rav.cantBuyName=struct.name}
}
}

if(room=room_inventory){
if(global.phase=PHASES.sell){
global.phase=PHASES.sell
global.shopManager.sellStruct=struct
scr_goto_room(room_shop)
}
}

if(global.phase=PHASES.inventory){
with(obj_pots){selected=0}
selected=1
}
