
if(room=room_husmusen or room=jansson_husmus_gym){
	draw_self()
	if(global.phase=PHASES.defeated){
switch(global.turn){
case TURNS.enemy: draw_sprite_ext(spr_husmusen_defeat_bubble,-1,x+sprite_width,y-sprite_height,1,1,0,c_white,1);
case TURNS.Amber: draw_sprite_ext(spr_husmusen_victory_bubble,-1,x+sprite_width,y-sprite_height,1,1,0,c_white,1);
}
}
}

