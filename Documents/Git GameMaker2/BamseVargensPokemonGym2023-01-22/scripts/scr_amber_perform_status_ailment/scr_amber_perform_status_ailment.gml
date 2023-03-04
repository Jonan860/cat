function scr_perform_status_ailment() {
		for(var i=0;i<ds_list_size(statusAilmentList);i++){
		var statusAilment=statusAilmentList[|i]
		with(statusAilment){if(applied){scrStart(); exit;}}
	}
	if(frozen.applied or asleep.applied or paralyzed.symptomatic){scr_turn_decision()}
	}
