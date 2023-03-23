


var i=1

if(global.turn==TURNS.Amber){
if(global.phase=PHASES.choosing ){
	
	with(global.amber){
for(var i=0; i<ds_list_size(potionBag); i++){
var item=ds_list_find_value(potionBag,i)
with(item){
if(count>0 and !instance_exists(object)){
instance_create_depth(x,y-30*i,0,object)
i+=1
}}}}

global.phase=PHASES.chooseItem

}
else if(global.phase=PHASES.chooseItem){
with(obj_item_buttons){instance_destroy()}

global.phase=PHASES.choosing
}

}