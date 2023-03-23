
if(visible){
with(instance_find(obj_ja_button,0)){visible=0}
with(obj_reinard_rav){
sell=noone
buy=noone
cant_buy=noone
}
with(instance_find(obj_nej_button,0)){
visible=0
}
global.phase=PHASES.reinardShop
}
