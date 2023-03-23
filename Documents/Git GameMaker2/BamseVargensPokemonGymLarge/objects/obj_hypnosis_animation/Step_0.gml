/// @description Insert description here
// You can write your code in this editor


var target= struct.getTarget()
with(obj_hypnosis_ring){
if(abs(x-target.x)<9){
	if(instance_number(obj_hypnosis_ring)==1){
	struct.effect()
	with(obj_hypnosis_animation){instance_destroy()}
	scr_turn_decision()
	}
instance_destroy()
}
}

var nearest = instance_nearest(x,y,obj_hypnosis_ring)
if(abs(nearest.x-x)>abs(struct.owner.x-target.x)/6){
	constructHypnosisRing()
	}




