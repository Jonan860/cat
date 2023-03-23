/// @description Insert description here
// You can write your code in this editor
struct=noone

constructHypnosisRing = function(){
	var ring = instance_create_depth(x,y,0,obj_hypnosis_ring)
	with(ring){
	struct=other.struct
	var target=struct.getTarget()
	move_towards_point(target.x,target.y,16)
	}
	}


audio_play_sound(sound_hypnosis,0,1)
