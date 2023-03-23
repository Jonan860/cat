function scr_amber_perform_status_ailment() {
	if(global.turn=TURNS.Amber){
		for(i=0;i<ds_list_size(statusAilmentList);i++){
		var statusAilment=ds_list_find_value(statusAilmentList,i)
		if(global.phase=statusAilment.implementationPhase){
		}
		}
		
		switch (global.phase){
	case PHASES.asleep : if(!audio_is_playing(sound_sleep)){
		audio_resume_sound(global.background_music)
	global.phase=PHASES.choosing  
	scr_status_ailment_effect_check()
	}
	
	case global.phase=PHASES.awakening : if(!audio_is_playing(sound_awakening)){
	global.phase=PHASES.choosing  
	scr_status_ailment_effect_check()
	}
	
	case global.phase=PHASES.confused : if(!audio_is_playing(sound_confused)){
		if(irandom(2)=0){scr_confused() }
		global.phase=PHASES.choosing  
	with(global.last_pressed_move_button){event_perform_object(obj_move_button,ev_mouse, ev_left_press)}
	}

	if(global.phase="Amber nightmare 0" and !audio_is_playing(sound_nightmare)){
		audio_resume_sound(global.background_music)
	if(active_pokemon.nightmare=0) nightmare=1
	scr_turn_decision()
	//scr_status_ailment_effect_check()
	}

	if(global.phase="Amber nightmare" and !audio_is_playing(sound_nightmare)){
		audio_resume_sound(global.background_music)
	global.phase=PHASES.choosing
	active_pokemon.HP-=active_pokemon.max_HP/8
	scr_status_ailment_effect_check()
	}



	if(global.phase=PHASES.paralyzed and !audio_is_playing(sound_paralyzed)){
	global.phase=PHASES.choosing  //// för starten i scr_status.. // om alla status är checkat kolla om attacken får göras i sce_status ailment
	scr_status_ailment_effect_check()
	}
	}

}
