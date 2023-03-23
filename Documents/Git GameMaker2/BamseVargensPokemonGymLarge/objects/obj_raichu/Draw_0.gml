
event_inherited()

if(global.move==MOVES.thundershock){
if(global.phase=PHASES.attackHit){draw_sprite(spr_thundershock,-1,match_x,match_y)}

if(global.phase=PHASES.attackHit){
if(choose(1,0)==1){draw_sprite(spr_thundershock,-1,match_x-500,match_y)}
else{draw_sprite(spr_thundershock,-1,match_x,match_y-500)}
}
}

if(global.move==MOVES.thunder){
if(global.phase=PHASES.attackHit){draw_sprite(spr_thunder,-1,match_x,match_y)}
if(global.phase=PHASES.attackMiss){draw_sprite(spr_thunder,-1,match_x-500,match_y)}
}
