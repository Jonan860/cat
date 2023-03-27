with(global.amber.active_pokemon){
if(id=other.id and alive and !instance_exists(obj_move_button)){
	scr_create_move_buttons()
	}
}

if(HP<=0 and alive){
active=0
alive=0

global.phase=PHASES.choosing
with(obj_move_button){instance_destroy()}

global.numberofstartersleft=0
with(obj_starters){if(HP>0 and !daycare){global.numberofstartersleft+=1}}

if(!global.numberofstartersleft){global.phase=defeated}
}

if(room=difficulty and appear){image_alpha+=0.003}

info=distance_to_point(mouse_x,mouse_y)<=0




