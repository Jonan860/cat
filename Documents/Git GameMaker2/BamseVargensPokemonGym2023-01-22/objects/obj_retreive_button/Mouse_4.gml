
global.phase=PHASES.sakuradaycareretrieve
with(obj_starters_button){instance_destroy()}


with(global.amber){
for(var i = 0; i < ds_list_size(daycareList); i++){
var pokemon = daycareList[|i]
instance_create_depth(400,64*i,0,pokemon.button)
}
}