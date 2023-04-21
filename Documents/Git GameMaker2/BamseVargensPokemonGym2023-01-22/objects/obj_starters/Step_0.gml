

if(HP<=0 and alive){
active=0
alive=0

global.phase=PHASES.choosing
with(obj_move_button){instance_destroy()}

global.numberofstartersleft=0

for(var i = 0; i < ds_list_size(global.amber.pokemonCompanionList); i++){global.numberofstartersleft+= HP>0}

if(global.numberofstartersleft == 0){global.phase=PHASES.defeated}
}

if(room=difficulty and appear){image_alpha+=0.003}

info=distance_to_point(mouse_x,mouse_y)<=0




