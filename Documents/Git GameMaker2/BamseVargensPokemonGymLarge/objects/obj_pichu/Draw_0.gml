
event_inherited()
if(global.turn=TURNS.enemy){
if(global.move=MOVES.thundershock){
if(global.phase=PHASES.attackHit){draw_sprite(spr_thundershock,-1,match_x,match_y)}

if(global.phase=PHASES.attackMiss){
if(choose(1,0)==1){draw_sprite(spr_thundershock,-1,match_x-500,match_y)}
else{draw_sprite(spr_thundershock,-1,match_x,match_y-500)}
}
	}

if(global.move=MOVES.charm){draw_sprite(spr_charm,-1,x+sprite_width/3,y-sprite_height/3)}
}
