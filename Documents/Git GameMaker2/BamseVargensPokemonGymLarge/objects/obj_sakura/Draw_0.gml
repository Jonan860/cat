switch(room){
case room_skalman: draw_self()
case room_sakura_daycare:{
draw_sprite(spr_sakura_daycare,-1,0,310)
switch(global.phase){
case PHASES.Sakuradaycareentrancehall: draw_sprite(spr_sakura_welcome,-1,0,310-250);
case PHASES.sakuradaycareretrieve: draw_sprite(spr_sakura_retrieve,-1,0,310-128);
case PHASES.sakuradaycaredropof: draw_sprite(spr_sakura_drop_of,-1,0,310-128);
}
};
}
