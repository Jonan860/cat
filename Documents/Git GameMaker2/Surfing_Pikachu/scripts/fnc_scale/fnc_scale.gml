function fnc_scale(object) {
	switch(object) {
		case obj_voltorb : return 1; break;
		case obj_electrode : return 1 + 1/3; break;	
		case obj_koffing : return 1 + 1/3; break;
		case obj_geodude : return 2; break;
		case obj_graveler : return 3; break;
	}
}
