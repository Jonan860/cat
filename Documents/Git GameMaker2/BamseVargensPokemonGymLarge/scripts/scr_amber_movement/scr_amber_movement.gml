function scr_amber_movement() {
	if(moveable){
	var x_translation=64*(keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left))
	var y_translation=64*(keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up))
	var blocker=instance_position(x+x_translation,y+y_translation,obj_trainer)
	if(blocker<0){x+=x_translation; y+=y_translation}
	
	else if(blocker.defeated){x+=x_translation; y+=y_translation}
	}
}
