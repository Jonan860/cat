
global.phase=PHASES.sakuradaycareretrieve
with(obj_starters_button){instance_destroy()}

var i=0
with(obj_starters){
if(daycare){
instance_create_depth(400,64*i,0,button)
i+=1
}
}