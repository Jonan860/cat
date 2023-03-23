
x=opponent_x; y=opponent_y;
speed=0
if(global.move=MOVES.superFang){instance_create_depth(match_x,match_y,-1,obj_super_fang)}
else{instance_create_depth(match_x,match_y,-1,obj_hit)}
scr_turn_decision()